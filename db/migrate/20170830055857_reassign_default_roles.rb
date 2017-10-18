class ReassignDefaultRoles < ActiveRecord::Migration[5.1]
  def change
    default_admin = User.where(email: 'admin@example.com').first
    admin_role = Role.where(name: 'admin').first
    if default_admin
      default_admin.role = admin_role
      default_admin.save!
    end
    default_manager = User.where(email: 'manager@example.com').first
    manager_role = Role.where(name: 'manager').first
    if default_manager
      default_manager.role = manager_role
      default_manager.save!
    end
  end
end
