module ApplicationHelper

  def flash_message(message)
    if message.kind_of?(String)
      return message
    elsif message.kind_of?(Hash)
      text = ""
      message.each do |attribute, errors|
        text += "<strong>#{attribute}:</strong> " + errors.join(". ") + ". " unless errors.blank?
      end
      return text.html_safe
    end
  end
  
end
