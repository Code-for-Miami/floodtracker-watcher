class LevelRaw < ApplicationRecord
  def self.ingest(params)
    create(
      readings: params[:data].split(" "),
      coreid: params[:coreid],
      published_at: params[:published_at]
    )
  end
end
