class Chefhelper < Thor
				include Thor::Actions
				attr_reader :name

				def self.source_root
								File.dirname(__FILE__)
				end

				desc "convert_attr 'ATTR'", "Converts chef attr '[aa][bb]' into given format"
				def convert_attr(st)
								st = st.delete(']').delete('"').delete("'").delete(':')
								array = st.split('[').delete_if {|row| row.empty?}

								puts array.collect{|row| "\"#{row}\""}.join(" => { ") + " }" 	* (array.size - 1)
								puts array.collect{|row| "\"#{row}\""}.join(": { ") + " }" * (array.size - 1)
				end




end
