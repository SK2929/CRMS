module ApplicationHelper
  def document_title
    if @title.present?
      "#{@title} - CRMS"
    else
      "CRMS"
    end
  end
end
