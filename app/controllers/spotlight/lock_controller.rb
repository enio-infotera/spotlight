module Spotlight
  ##
  # Locking mechanism for page-level locks
  class LockController < Spotlight::ApplicationController
    load_and_authorize_resource

    # DELETE /locks/1
    def destroy
      @lock.destroy

      render plain: '', status: 204
    end
  end
end
