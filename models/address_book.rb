require_relative 'entry'
require "csv"
 require 'bloc_record/base'

 class AddressBook < BlocRecord::Base
  attr_reader :entries

   def initialize(options={})
    super
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0
    entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end
    entries.insert(index, Entry.new(name, phone_number, email))
  end

  def import_from_csv(file_name)
     Entry.create(name: name, phone_number: phone, email: email, address_book_id: self.id)
  end


end
