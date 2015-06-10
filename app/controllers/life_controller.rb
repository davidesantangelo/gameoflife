# app/controllers/life_controller.rb
class LifeController < ApplicationController
  before_action :init, only: [:index, :run]

	def index
    @@life = Life.new(@cols, @rows)
	end

  def run
    cells = []
    if params[:load] == "true"
      params[:cells].to_hash.values.each do |col, row|
        cells.push([col.to_i,row.to_i])
      end
      @@life.load cells
    end
    @grid = @@life.execute
    @count = 1
  end

  private

  def init
    @rows = 6
    @cols = 6
  end
end