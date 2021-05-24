=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before. 

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module MuxRuby
  class PlaybackPolicy
    PUBLIC = "public".freeze
    SIGNED = "signed".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PlaybackPolicy.constants.select { |c| PlaybackPolicy::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PlaybackPolicy" if constantValues.empty?
      value
    end
  end
end
