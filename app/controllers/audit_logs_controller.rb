class AuditLogsController < ApplicationController

    def index
        authorize @audit_logs
        @audit_logs = AuditLog.all
	end

end
