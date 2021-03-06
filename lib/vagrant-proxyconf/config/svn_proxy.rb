require 'vagrant'
require_relative 'key_mixin'

module VagrantPlugins
  module ProxyConf
    module Config
      # Proxy configuration for Subversion
      #
      # @!parse class SvnProxy < Vagrant::Plugin::V2::Config; end
      class SvnProxy < Vagrant.plugin('2', :config)
        include KeyMixin
        # @!parse extend KeyMixin::ClassMethods

        # @return [String] the HTTP proxy
        key :http, env_var: 'VAGRANT_SVN_HTTP_PROXY'

        # @return [String] a comma separated list of hosts or domains which do
        # not use proxies
        key :no_proxy, env_var: 'VAGRANT_SVN_NO_PROXY'
      end
    end
  end
end
