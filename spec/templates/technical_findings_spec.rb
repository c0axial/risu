require 'spec_helper'

module Risu
	module Templates		
		describe TechnicalFindings do
			before(:all) do
				@file_name = "/tmp/tech_findings.pdf"
				@template_manager = Risu::Base::TemplateManager.new "risu/templates"
				@templater = Risu::Base::Templater.new("technical_findings", Report, @file_name, @template_manager)
				
				@report = Report
				@report.title = "Rspec Test"
				@report.author = "hammackj"
				@report.company = "None"
				@report.classification = "None"
				
				@host = Host.make
				@host1 = Host.make
			end
			
			after(:all) do
				Report.delete_all
				Host.delete_all
				Plugin.delete_all
				Item.delete_all
				FamilySelection.delete_all
				IndividualPluginSelection.delete_all
				PluginsPreference.delete_all
				Policy.delete_all
				Reference.delete_all
				ServerPreference.delete_all
				Version.delete_all
				
				File.delete(@file_name) if File.exist?(@file_name)
			end
			
			it "should create #{@file_name} on template creation" do				
				@templater.generate
				File.exist?(@file_name).should == true
			end
			
			it "should have an MD5 of ceaf7cc7ec6b77b00f412c9cee8ae45d after creation" do
				if File.exist?(@file_name) == true
					require 'digest/md5'
					Digest::MD5.hexdigest(File.read(@file_name)).should == "ceaf7cc7ec6b77b00f412c9cee8ae45d"
				end
			end
		end
	end
end