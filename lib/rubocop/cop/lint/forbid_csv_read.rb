module RuboCop
  module Cop
    module Lint
      class ForbidCsvRead < Cop
        def on_send(node)
          receiver, method_name, *args = *node
          return unless receiver.const_name == 'CSV'
          return unless method_name == :read

          add_offense(node, :expression, 'CSV.read wastes a lot of memory. Use CSV.foreach')
        end
      end
    end
  end
end
