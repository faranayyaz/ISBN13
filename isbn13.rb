isbn = "978014300723"
sum = 0
isbn.chars.each_with_index do |num,i|
    (i%2) == 0 ? sum += num.to_i*1 : sum += num.to_i*3
end

res = 10 - (sum % 10)
(res==10) ? isbn.concat(0.to_s) : isbn.concat(res.to_s)

print isbn
