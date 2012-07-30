class Metric < ActiveRecord::Base
  attr_accessible :agentpermission, :companypermission, :enddate, :expectedtime, :frequency, :level, :name, :permissionlevel, :startdate, :status, :summarytype, :usergroup, :visibility
end
