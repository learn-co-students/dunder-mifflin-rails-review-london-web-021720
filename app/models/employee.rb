class Employee < ApplicationRecord
    belongs_to :dog 
    #  validate :is_alias_duplicate 
    # validate :is_job_duplicate
    validates :alias, presence: true, uniqueness: true
    validates :title, presence: true, uniqueness: true


    # def is_alias_duplicate 
    #     if Employee.find_by(alias: self.alias)
    #     errors.add(:title, "Alias already in use")
    #     end 

    # end 

    # def is_job_duplicate
    #     if Employee.find_by(title: self.title)
    #         errors.add(:title, "Job title already in use")
    #     end 
    
    
    # end 





end
