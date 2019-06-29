# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser

    attr_accessor :emails

    @@all = []

    def initialize(*emails)
        @emails = emails
       
    end

    def parse
        #initiate with a list of emails separated with spaces or commas
        #should return only unique emails
        new_list = @emails[0].split(/[, ]/)
        new_list.delete_if do |email|
            email == ""
        end
        new_list.uniq
    end
end