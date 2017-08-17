class StaticController < ApplicationController

def home
  if admin_types.include?(current_user.type)
    #@pending_approvals = Post.where(status: 'submitted')
    @pending_approvals = Post.submitted
    @recent_audit_items = AuditLog.last(10)
  else
  
  end
end

end
