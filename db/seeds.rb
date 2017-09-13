# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
	City.delete_all;
	State.delete_all;
	city = City.create([{ name: 'Baltimore' }])
    state = State.create(:name=>'Maryland')

