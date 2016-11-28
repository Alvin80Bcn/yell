module Yell #:nodoc:
  module Helpers #:nodoc:
    module Level #:nodoc:
      # Set the minimum log level.
      #
      # @example Set the level to :warn
      #   level = :warn
      #
      # @param [String, Symbol, Integer] severity The minimum log level
      def level=(severity)
        @__level__ = case severity
                     when Yell::Level then severity
                     else Yell::Level.new(severity)
                     end
      end

      # @private
      def level
        @__level__
      end

      private

      def reset!(options = {})
        @__level__ = Yell::Level.new
        self.level = Yell.__fetch__(options, :level, default: 0)

        super(options)
      end
    end
  end
end
