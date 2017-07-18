class SponsorsController < ApplicationController

	def index
		render json: Sponsor.all.as_json({
			except: [:created_at, :updated_at],
			include: {
				players: { only: :name }
			}
		})
	end

end