class SponsorshipsController < ApplicationController

	def index
		render json: Sponsorship.all.as_json({
			except: [:created_at, :updated_at, :player_id, :sponsor_id],
			include: {
				player: { only: :name },
				sponsor: { only: :name }
			}
		})
	end

end