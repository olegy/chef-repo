# vi:ft=ruby:
site :opscode

cookbook 'annoyances'
cookbook 'runit'
cookbook 'nginx'
cookbook 'monit'
cookbook 'rbenv'
cookbook 'openssh'
cookbook 'postgresql'
cookbook 'users_solo' # Creates users from a databag using chef-solo
cookbook 'sudo' # Installs sudo and configures /etc/sudoers

Dir.glob('./site-cookbooks/*').each do |path|
  cookbook File.basename(path), :path => path
end
# # This is a Berkshelf configuration file. It can be used to declare community
# # and third-party cookbook dependencies. You can install Berkshelf via the
# # command line by typing:
# #
# #   $ gem install berkshelf
# #
# # For more information on Berkshelf, see the documentation at
# # http://berkshelf.com/

# # This declares the default location to search for cookbooks. The key :opscode
# # tells Berkshelf to search community.opscode.com for cookbooks. For a list of
# # other valid keys, see the Berkshelf documentation
# site :opscode

# # Example usage
# # -------------

# # This will download the latest version of the Apache 2 cookbook from the
# # community site.
# cookbook "apache2"

# # This will download a specific version of the nginx cookbook from the
# # community site. The ~> is called a spermy equivalent. It will pick up any
# # additional patch (bug) releases, but will keep the minor version locked at
# # 101. In other words, 0.101.X.
# cookbook "nginx", "~> 0.101.5"

# # Berkshelf also allows you to define git locations. This will download the
# # latest master branch from github for this cookbook.
# cookbook "mysql", :git => "https://github.com/opscode-cookbooks/mysql.git"

# # Especially for local development, it's helpful to use a path location. This
# # points to a local cookbook on the filesystem, relative to the current
# # working directory.
# cookbook "myserver", :path => "/code/myserver-cookbook"
