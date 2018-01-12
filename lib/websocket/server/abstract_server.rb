module Server
  class AbstractServer
    UndefinedAbstractMethod = Class.new(RuntimeError)

    def on_connect
      Raise UndefinedAbstractMethod, 'abstract method on_connect in not defined'
    end

    def on_message
      Raise UndefinedAbstractMethod, 'abstract method on_message in not defined'
    end

    def on_error
      Raise UndefinedAbstractMethod, 'abstract method on_error in not defined'
    end
  end
end
