class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


         def self.to_csv
         	CSV.generate do |csv|
         		csv << column_names
         		all.each do |student|
         			csv << student.attributes.values_at(*column_names)
         		end
         	end
          end


def self.search(search)

    if search
      where('first_name LIKE ?', "%#{search}%")
    else
      all
    end
  end
end
