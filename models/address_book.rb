require_relative 'entry'
require "csv"
 require 'bloc_record/base'

 class AddressBook < BlocRecord::Base

  #  def initialize(options={})
  #   super
  #   @entries = []
  # end

  def add_entry(name, phone_number, email)
    Entry.create(name: name, phone_number: phone, email: email)
    # index = 0
    # entries.each do |entry|
    #   if name < entry.name
    #     break
    #   end
    #   index += 1
    # end
    # entries.insert(index, Entry.new(name, phone_number, email))
  end

   def entries
     Entry.where(address_book_id: self.id)
   end

   def find_entry(name)
     Entry.where(name: name, address_book_id: self.id).first
   end

  def import_from_csv(file_name)
     Entry.create(name: name, phone_number: phone, email: email, address_book_id: self.id)
  end


end
