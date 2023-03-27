# frozen_string_literal: true

module HexletCode

  module Tag

    TAGS = %w[br img input textarea label]

    def self.build(tag, params = {})
      raise "Tag #{tag} is not supported" unless TAGS.include? tag.downcase

      params_as_string = ''
      params.each do |attr_name, attr_value|
        params_as_string += " #{attr_name}=\"#{attr_value}\""
      end
      result = "<#{tag}#{params_as_string}>"
      if block_given?
        result += yield
        result += "</#{tag}>"
      end
      result
    end
  end
end
