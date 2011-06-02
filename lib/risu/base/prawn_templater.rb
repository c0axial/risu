module Risu
	module Base
		# Templater class for generating a report from a erb template
		#
		# @author Jacob Hammack
		class PrawnTemplater
			attr_accessor :template, :template_source, :findings, :output_file
		
			# Setups of the Templater class initalizing all of the variables
			#
			# @return [PrawnTemplater] New Instance
			def initialize(template, findings, output)
				@template = template
				@findings = findings
				@output_file = output

				@template_source = File.new(@template).read
			end
		
			# Generates a report based on the erb template
			#
			# @return [String] html output of the erb template
			def generate
				begin				
					source = @template_source
					template = @template
					Prawn::Document.generate(@output_file, :margin => [75, 50, 75, 50]) do
						font_size 12
						eval source
					end
				rescue => e
					puts "Error: #{e.message} \n #{e.backtrace.join("\n\t")}\n"
				end
			end
		end
	end
end