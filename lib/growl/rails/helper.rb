module Growl
  module Rails
    module Helper

      def flash_notification_tag
        jscript = []
        flash.each do |k,v|
          jscript.push "$.growl({ title: '#{k.to_s.humanize.titleize}', message: '#{v}', style: '#{k.to_s}' });"
        end

        javascript_tag jscript.join("\n")
      end
      
    end
  end
end
