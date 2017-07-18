class PlayersController < ApplicationController

	def index
		if (params[:team_id])
			players = Team.find(params[:team_id]).players
		else
			players = Player.all
		end
		render json: players.as_json(json_config)
	end

	def show
		render json: Player.find(params[:id]).as_json(json_config)
	end

	private

	def json_config
		return {
			except: [:created_at, :updated_at, :team_id],
			include: {
				team: { only: :name },
				sponsors: { only: :name }
			}
		}
	end

end