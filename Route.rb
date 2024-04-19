# Класс Route (Маршрут):
# Имеет начальную и конечную станцию, а также список промежуточных станций. Начальная и конечная станции указываютсся при создании маршрута, а промежуточные могут добавляться между ними.
# Может добавлять промежуточную станцию в список
# Может удалять промежуточную станцию из списка
# Может выводить список всех станций по-порядку от начальной до конечной

class Route
	attr_reader :stations

	def initiliaze (start, finish)
		@stations = [start, finish]
	end
	def add_station (station, place)
		@stations.insert(place, station)
	end
	def delete_station (station)
		@stations.delete (station)
	end
end
