json.array!(@homejoyms) do |homejoym|
  json.extract! homejoym, :id, :selectservice, :payment, :address, :numofworkers, :packages, :ratecard
  json.url homejoym_url(homejoym, format: :json)
end
