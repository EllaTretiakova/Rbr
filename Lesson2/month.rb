#1. Сделать хеш, содержащий месяцы и количество дней в месяце. В цикле выводить те месяцы, у которых количество дней ровно 30

month = {'январь' => 31, 'фервраль' => 28, 'март' => 31, 'апрель' => 30, 'май'=> 31, 'Июнь' => 30, 'июль' => 31, 'август' => 31, 'сентябрь' => 30, 'октябрь' => 31, 'ноябрь' => 30, 'декабрь' => 31}
month.each do |key, values|
  puts key if values == 30
end