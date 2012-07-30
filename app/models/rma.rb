class Rma < ActiveRecord::Base
    attr_accessible :dailycount, :mtd, :title, :date

    def self.search(search)
    if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
    find(:all)
end
end
end
