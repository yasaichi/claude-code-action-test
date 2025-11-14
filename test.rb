require 'benchmark'

a = (1..1000).to_a
b = (1..1000).to_a

Benchmark.bm do |x|
  x.report("each×2:") do
    a.each do |xv|
      b.each do |yv|
        # Do nothing
      end
    end
  end

  x.report("product:") do
    a.product(b).each do |xv, yv|
      # Do nothing
    end
  end
end
