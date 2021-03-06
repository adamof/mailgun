require "json"
require "multimap/lib/multimap"
require "multimap/lib/multiset"
require "multimap/lib/nested_multimap"

require "mailgun/error"
require "mailgun/base"
require "mailgun/domain"
require "mailgun/route"
require "mailgun/mailbox"
require "mailgun/bounce"
require "mailgun/unsubscribe"
require "mailgun/webhook"
require "mailgun/complaint"
require "mailgun/log"
require "mailgun/list"
require "mailgun/list/member"
require "mailgun/message"
require "mailgun/secure"
require "mailgun/address"
require "mailgun/client"

#require "startup"

def Mailgun(options={})
  options[:api_key] = Mailgun.api_key if Mailgun.api_key
  options[:domain] = Mailgun.domain if Mailgun.domain
  options[:webhook_url] = Mailgun.webhook_url if Mailgun.webhook_url
  options[:public_api_key] = Mailgun.public_api_key if Mailgun.public_api_key
  Mailgun::Base.new(options)
end
