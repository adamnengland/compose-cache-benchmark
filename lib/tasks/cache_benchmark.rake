namespace :cache_benchmark do
  task test: :environment do
    cacheval = [(0..1000).map{ rand(36).to_s(36) }.join]
    Benchmark.bm { |x|
      x.report("caching:") {
        Rails.cache.write("test", cacheval)
        1000.times do
          if !Rails.cache.exist?("test")
            raise
          else
            Rails.cache.fetch("test")
          end
        end
        Rails.cache.delete("test")
      }
    }
  end
end
