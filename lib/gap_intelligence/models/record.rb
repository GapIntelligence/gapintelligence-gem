module GapIntelligence
  class Record
    class << self
      def attributes(*args)
        options = args.last.is_a?(::Hash) ? args.pop : {}
        args.each do |attr|
          define_attribute(attr.to_s, options)
        end
      end
      alias :attribute :attributes

      def define_attribute(attr, options = {})
        klass = options[:class]

        define_method(attr) do
          convert_value_to(klass, @attributes[attr])
        end

        define_method("#{attr}=") do |value|
          @attributes[attr] = convert_value_to(klass, value)
        end
      end
    end

    attr_reader :id

    def initialize(attrs = {})
      @id = attrs['id']
      @attributes = attrs.fetch('attributes', attrs)
    end

    def raw
      { response_body: @attributes }
    end

    private
    def convert_value_to(klass, value)
      return value if klass.nil? || value.nil? || value.is_a?(klass)

      case klass.to_s
      when 'Date', 'Time'
        klass.parse(value)
      else
        klass.new(value)
      end
    end
  end
end
