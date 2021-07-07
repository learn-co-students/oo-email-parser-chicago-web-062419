# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser

    attr_accessor :emails
    attr_reader :parse

    def initialize (emails)
        @emails = emails
    end

    def parse
        parsed_emails = []
        parsed_emails = @emails.split(/[\s,]+/)
        parsed_emails.uniq
    end

end