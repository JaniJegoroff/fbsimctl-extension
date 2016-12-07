# Class to handle fbsimctl shell commands
#
class FBSC
  class << self
    def boot(device)
      execute_command("#{fbsimctl_command} '#{device}' boot")
    end

    def install(path)
      execute_command("#{fbsimctl_command} install '#{path}'")
    end

    def uninstall(app)
      execute_command("#{fbsimctl_command} uninstall '#{app}'")
    end

    def help
      public_methods(false)
    end
    alias h help

    private

    def execute_command(command)
      stdout, _stderr, status = Open3.capture3(command)
      status.success? ? nil : raise(stdout)
    end

    def fbsimctl_command
      'fbsimctl'
    end

    protected

    def method_missing(method, *_args, &_block)
      execute_command("#{fbsimctl_command} #{method}")
    end
  end
end
