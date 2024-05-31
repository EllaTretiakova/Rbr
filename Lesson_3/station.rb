
#Класс Station (Станция):
#Имеет название, которое указывается при ее создании
#Может принимать поезда (по одному за раз)
#Может возвращать список всех поездов на станции, находящиеся в текущий момент
#Может возвращать список поездов на станции по типу (см. ниже): кол-во грузовых, пассажирских
#Может отправлять поезда (по одному за раз, при этом, поезд удаляется из списка поездов, находящихся на станции).


class Station
	attr_reader :name
	attr_reader :trains

	def initialize (name, trains)
	  @name = name 
	  @trains = []
	end

	def take (train)
	  self.trains << train
	end

	def send (train)
	  self.trains.delete(train)
	end

	def type (type)
	  self.trains.select {|train| train.type == type}.count
	end
end
