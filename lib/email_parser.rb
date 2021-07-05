# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        emails_array = @emails.split.collect do |x|
            x.chomp(",")
        end
        emails_array.uniq
        # emails_array.delete_if do |email|
        # end
        # binding.pry
        
        
    end
end

# emails = "john@doe.com, person@somewhere.org"
# parser = EmailParser.new(emails)

# p parser.parse