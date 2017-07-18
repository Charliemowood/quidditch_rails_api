class TeamsController < ApplicationController

	def index
		render json: Team.all.as_json({
			except: [:created_at, :updated_at],
			include: {
				players: { only: :name }
			}
		})
	end

end