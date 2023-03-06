#!/usr/bin/env ruby

# file: spsdrbsub.rb

require 'onedrb'

class Subscriber

  def initialize(blk)
    @blk = blk
  end

  def receive(topic, message)
    @blk.call(message, topic)
  end

end

class SpsDRbSub
  
  def initialize(client_ip='0.0.0.0', port: '59003', host: '127.0.0.1', 
                 brokerport: '59004')
    
    @client_ip, @port, @host, @brokerport = client_ip, port, host, brokerport
    
  end

  def subscribe(topic, &blk)
    
    broker = OneDrb::Client.new host: @host, port: @brokerport
    broker.subscribe topic, @client_ip
    client  = OneDrb::Server.new host: @client_ip, port: @port, 
        obj: Subscriber.new(blk)
    client.start
  end

end
