module JavaLegacyRails
  class EnumCoder
    attr_accessor :object_class

    def initialize(object_class = Object)
      @object_class = object_class
    end

    def dump(arr)
      return if arr.nil?

      unless arr.is_a?(Array)
        raise ::ActiveRecord::SerializationTypeMismatch,
          "Attribute was supposed to be an Array, but was a #{arr.class}. -- #{arr.inspect}"
      end
      arr.join(",")
    end

    def load(string)
      return string unless string.is_a?(String)
      obj = string =~ /, / ? string.split(", ") : string.split(",")

      unless obj.is_a?(Array) || obj.nil?
        raise ::ActiveRecord::SerializationTypeMismatch,
          "Attribute was supposed to be a String, but was a #{obj.class}"
      end

      obj
    end
  end
end