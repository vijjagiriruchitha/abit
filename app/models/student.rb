class Student < ApplicationRecord
	require'csv'
	def self.import(file)
		CSV.foreach(file.path,headers:true) do |s|
			Student.create!s.to_hash
		end
	end

end
