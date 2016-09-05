module SimpleFormHelper
  module Inputs
    class DateTimeInput < SimpleForm::Inputs::DateTimeInput
      def input
        @builder.text_field(attribute_name,input_html_options)
      end    
    end
  end
end