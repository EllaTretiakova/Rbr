#Класс Train (Поезд):
#Имеет номер (произвольная строка) и тип (грузовой, пассажирский) и количество вагонов, эти данные указываются при создании экземпляра класса
#Может набирать скорость
#Может возвращать текущую скорость
#Может тормозить (сбрасывать скорость до нуля)
#Может возвращать количество вагонов
#Может прицеплять/отцеплять вагоны (по одному вагону за операцию, метод просто увеличивает или уменьшает количество вагонов). Прицепка/отцепка вагонов может осуществляться только если поезд не движется.
#Может принимать маршрут следования (объект класса Route). 
#При назначении маршрута поезду, поезд автоматически помещается на первую станцию в маршруте.
#Может перемещаться между станциями, указанными в маршруте. Перемещение возможно вперед и назад, но только на 1 станцию за раз.
#Возвращать предыдущую станцию, текущую, следующую, на основе маршрута

class Train
	
	attr_reader :number
	attr_reader :type
	attr_accessor :van
	attr_accessor :speed
	attr_reader :route
	attr_reader :current_station
	
	def initialize (type, number, van)
		@number = number
		@type = type
		@van = van
		@speed = 0
	end
	def speed_speed
		@speed += 10 
    end
	def new_van
		@van += 1 if @speed == 0
	end
	def delete_van
		@van -=1 if @speed == 0
	end
	def train_route(route)
 		@station = route.station.first
 		@route = route
	end
	def stop
		@speed = 0 if @speed > 0
	end 
 	def moving_forward
    	moving_to(next_station)
 	end
  	def moving_back
    	moving_to(previous_station)
  	end
 	def next_station
    	@route.next_station(current_station)
  	end
  	def previous_station
    	@route.previous_station(current_station)
  	end
  	def moving_to(station)
    	@current_station&.send(self)
    	@current_station = station
    	@current_station.take(self)
   		true
  	end
end






	 
