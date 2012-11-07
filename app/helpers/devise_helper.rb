# encoding: utf-8

module DeviseHelper
  # Prepare roles to show in select inputs etc.
  def roles_for_collection
    Role.all.map{|role| [role.to_s, role.name.to_s]}
  end
end
