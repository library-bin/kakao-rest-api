require 'rest-client'

module RestClientExt
  include ::RestClient

  READ_TIMEOUT = 5
  OPEN_TIMEOUT = 5

  def self.get(url, headers = {}, &block)
    Request.execute(:method => :get, :url => url, :headers => headers, :read_timeout => READ_TIMEOUT, :open_timeout => OPEN_TIMEOUT, &block)
  end

  def self.post(url, payload, headers = {}, &block)
    Request.execute(:method => :post, :url => url, :payload => payload, :read_timeout => READ_TIMEOUT, :open_timeout => OPEN_TIMEOUT, :headers => headers, &block)
  end

  def self.patch(url, payload, headers = {}, &block)
    Request.execute(:method => :patch, :url => url, :payload => payload, :headers => headers, :read_timeout => READ_TIMEOUT, :open_timeout => OPEN_TIMEOUT, &block)
  end

  def self.put(url, payload, headers = {}, &block)
    Request.execute(:method => :put, :url => url, :payload => payload, :headers => headers, :read_timeout => READ_TIMEOUT, :open_timeout => OPEN_TIMEOUT, &block)
  end

  def self.delete(url, headers = {}, &block)
    Request.execute(:method => :delete, :url => url, :headers => headers, :read_timeout => READ_TIMEOUT, :open_timeout => OPEN_TIMEOUT, &block)
  end

  def self.head(url, headers = {}, &block)
    Request.execute(:method => :head, :url => url, :headers => headers, :read_timeout => READ_TIMEOUT, :open_timeout => OPEN_TIMEOUT, &block)
  end

  def self.options(url, headers = {}, &block)
    Request.execute(:method => :options, :url => url, :headers => headers, :read_timeout => READ_TIMEOUT, :open_timeout => OPEN_TIMEOUT, &block)
  end
end