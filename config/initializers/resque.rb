if !ENV['REDISTOGO_URL'].nil?
  Resque.redis = Redis.new(:url => ENV['REDISTOGO_URL'])
end

