# Create an entry in the Extension list that loads a script called
# stairTools.rb.
require 'sketchup'
require 'extensions'

if RUBY_PLATFORM.match(/mswin/i)
  ENV['PATH'] += ";#{File.dirname(__FILE__)}"
  ENV['PATH'] += ";#{File.dirname(__FILE__)}/ruby/bin"
end

module FHGelsenkirchen
  CITYGML_VERSION = '1.8'
  CITYGML_BUILD = '5842'
  CITYGML_CREATOR = "Westfaelische Hochschule"
  CITYGML_COPYRIGHT = "2012, Westfaelische Hochschule"
end

cityGML_extension = SketchupExtension.new("City GML", "CityGML/CityGML-loader.rb")
cityGML_extension.version = FHGelsenkirchen::CITYGML_VERSION
cityGML_extension.creator = FHGelsenkirchen::CITYGML_CREATOR
cityGML_extension.copyright = FHGelsenkirchen::CITYGML_COPYRIGHT
cityGML_extension.description = "Tools for the usage of CityGML."
cityGML_extension.name = "City GML"
Sketchup.register_extension(cityGML_extension, true)