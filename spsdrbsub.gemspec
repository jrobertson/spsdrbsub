Gem::Specification.new do |s|
  s.name = 'spsdrbsub'
  s.version = '0.1.0'
  s.summary = 'Subscribes to a topic from the simplepubsub_drb broker.'
  s.authors = ['James Robertson']
  s.files = Dir["lib/spsdrbsub.rb"]
  s.add_runtime_dependency('onedrb', '~> 0.4', '>=0.4.2')
  s.signing_key = '../privatekeys/spsdrbsub.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'digital.robertson@gmail.com'
  s.homepage = 'https://github.com/jrobertson/spsdrbsub'
end
