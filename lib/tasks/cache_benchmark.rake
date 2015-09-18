namespace :cache_benchmark do
  task test: :environment do
    cacheval = [(0..1000).map{ rand(36).to_s(36) }.join]
    Benchmark.bm(15) { |x|
      x.report("caching:") {
        10000.times do
          Rails.cache.write("test", cacheval)
          Rails.cache.fetch("test")
          Rails.cache.delete("test")
        end
      }
    }
  end
end
