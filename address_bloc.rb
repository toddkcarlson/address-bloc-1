require_relative 'controllers/menu_controller'

require 'bloc_record'

STDOUT.sync = true

BlocRecord.connect_to("db/address_bloc.sqlite")

menu = MenuController.new

system "clear"
puts "Welcome to AddressBloc!"

menu.main_menu()