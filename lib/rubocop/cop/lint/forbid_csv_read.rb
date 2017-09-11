module RuboCop
  module Cop
    module Lint
      class ForbidCsvRead < Cop
        def on_send(node)
          receiver, method_name, *args = *node
          return unless check_receiver(receiver)
          return unless method_name == :read

          add_offense(node, :expression, 'CSV.read wastes a lot of memory. Use CSV.foreach')
        end

        def check_receiver(receiver)
          return true unless receiver
          return true if receiver.const_type? && receiver.const_name == 'CSV'
          return false
        end
      end
    end
  end
end
