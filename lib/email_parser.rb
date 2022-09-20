# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    def initialize (string)
        @string = string
    end

    def parse
        emailAry = @string.gsub /[\s,]/ , "%"       # replace all spaces & commas
        emailAry = emailAry.gsub! /[%]+/ , "%"      # reduce multiples to single
        emailAry = emailAry.split("%")              # split into array

        emailAry = emailAry.map {|email| email.strip}   # remove whitespace
        emailAry = emailAry.uniq                        # remove duplicates

        emailAry
    end

end