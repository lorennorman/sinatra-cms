# https://github.com/guard/guard#readme
guard 'pow' do
  watch('.powrc')
  watch('.powenv')
  watch('.rvmrc')
  watch('Gemfile')
  watch('Gemfile.lock')
  watch('app.rb')
end

guard 'spork' do
  watch('app.rb')
  watch('spec/spec_helper.rb')
  watch('features/support/env.rb')
end

guard 'rspec', :version => 2 do
  watch(%r{^spec/.+_spec\.rb})
  watch('spec/spec_helper.rb') { "spec" }
end

guard 'cucumber' do
  watch(%r{features/.+\.feature})
  watch(%r{features/support/.+})          { 'features' }
  watch(%r{features/step_definitions/(.+)_steps\.rb}) { |m| Dir[File.join("**/#{m[1]}.feature")][0] || 'features' }
end
