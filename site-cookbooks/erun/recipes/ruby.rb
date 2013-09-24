include_recipe "rbenv"
include_recipe "rbenv::ruby_build"

rbenv_ruby node['erun']['ruby_version']

rbenv_gem "bundler" do
  ruby_version node['erun']['ruby_version']
end

