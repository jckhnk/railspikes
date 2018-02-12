class MessageMailer < ActionMailer::Base
  default to: "vg@ipac.caltech.edu"

  def contact(resource)
    address = Mail::Address.new resource.email
    address.display_name = resource.name
    mail from: address.format, to: "vg@ipac.caltech.edu", subject: "[SpiKeS Message] #{resource.subject}", body: resource.body
  end
end
