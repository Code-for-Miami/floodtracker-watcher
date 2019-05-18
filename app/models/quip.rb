class Quip < ApplicationRecord
  def self.ingest(params)
    create(
      body: params[:data],
      coreid: params[:coreid],
      published_at: params[:published_at]
    )
  end
end
