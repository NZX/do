# encoding: utf-8

require File.expand_path(File.join(File.dirname(__FILE__), 'spec_helper'))
require 'data_objects/spec/encoding_spec'

describe DataObjects::Postgres::Connection do
  unless JRUBY
    # Do NOT test this on JRuby:
    #
    #   http://jdbc.postgresql.org/documentation/80/connect.html
    #
    #   According to the Postgres documentation, as of Postgres 7.2, multibyte
    #   support is enabled by default in the server. The underlying JDBC Driver
    #   handles setting the internal client_encoding setting appropriately. It
    #   can be overridden -- but for now, we won't support doing this.
    #
    behaves_like 'a driver supporting different encodings'
    behaves_like 'returning correctly encoded strings for the default encoding'
  end
end
