=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before.

The version of the OpenAPI document: v1
Contact: devex@mux.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'date'
require 'time'

module MuxRuby
  class CreateLiveStreamRequest
    attr_accessor :playback_policy

    attr_accessor :new_asset_settings

    # When live streaming software disconnects from Mux, either intentionally or due to a drop in the network, the Reconnect Window is the time in seconds that Mux should wait for the streaming software to reconnect before considering the live stream finished and completing the recorded asset. Defaults to 60 seconds on the API if not specified.
    attr_accessor :reconnect_window

    attr_accessor :passthrough

    # Force the live stream to only process the audio track when the value is set to true. Mux drops the video track if broadcasted.
    attr_accessor :audio_only

    # Latency is the time from when the streamer does something in real life to when you see it happen in the player. Set this if you want lower latency for your live stream. Note: Reconnect windows are incompatible with Reduced Latency and will always be set to zero (0) seconds. Read more here: https://mux.com/blog/reduced-latency-for-mux-live-streaming-now-available/
    attr_accessor :reduced_latency

    # Latency is the time from when the streamer does something in real life to when you see it happen in the player. Setting this option will enable compatibility with the LL-HLS specification for low-latency streaming. This typically has lower latency than Reduced Latency streams, and cannot be combined with Reduced Latency. Note: Reconnect windows are incompatible with Low Latency and will always be set to zero (0) seconds.
    attr_accessor :low_latency

    # Marks the live stream as a test live stream when the value is set to true. A test live stream can help evaluate the Mux Video APIs without incurring any cost. There is no limit on number of test live streams created. Test live streams are watermarked with the Mux logo and limited to 5 minutes. The test live stream is disabled after the stream is active for 5 mins and the recorded asset also deleted after 24 hours.
    attr_accessor :test

    attr_accessor :simulcast_targets

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'playback_policy' => :'playback_policy',
        :'new_asset_settings' => :'new_asset_settings',
        :'reconnect_window' => :'reconnect_window',
        :'passthrough' => :'passthrough',
        :'audio_only' => :'audio_only',
        :'reduced_latency' => :'reduced_latency',
        :'low_latency' => :'low_latency',
        :'test' => :'test',
        :'simulcast_targets' => :'simulcast_targets'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'playback_policy' => :'Array<PlaybackPolicy>',
        :'new_asset_settings' => :'CreateAssetRequest',
        :'reconnect_window' => :'Float',
        :'passthrough' => :'String',
        :'audio_only' => :'Boolean',
        :'reduced_latency' => :'Boolean',
        :'low_latency' => :'Boolean',
        :'test' => :'Boolean',
        :'simulcast_targets' => :'Array<CreateSimulcastTargetRequest>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::CreateLiveStreamRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::CreateLiveStreamRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'playback_policy')
        if (value = attributes[:'playback_policy']).is_a?(Array)
          self.playback_policy = value
        end
      end

      if attributes.key?(:'new_asset_settings')
        self.new_asset_settings = attributes[:'new_asset_settings']
      end

      if attributes.key?(:'reconnect_window')
        self.reconnect_window = attributes[:'reconnect_window']
      end

      if attributes.key?(:'passthrough')
        self.passthrough = attributes[:'passthrough']
      end

      if attributes.key?(:'audio_only')
        self.audio_only = attributes[:'audio_only']
      end

      if attributes.key?(:'reduced_latency')
        self.reduced_latency = attributes[:'reduced_latency']
      end

      if attributes.key?(:'low_latency')
        self.low_latency = attributes[:'low_latency']
      end

      if attributes.key?(:'test')
        self.test = attributes[:'test']
      end

      if attributes.key?(:'simulcast_targets')
        if (value = attributes[:'simulcast_targets']).is_a?(Array)
          self.simulcast_targets = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@reconnect_window.nil? && @reconnect_window > 300
        invalid_properties.push('invalid value for "reconnect_window", must be smaller than or equal to 300.')
      end

      if !@reconnect_window.nil? && @reconnect_window < 0.1
        invalid_properties.push('invalid value for "reconnect_window", must be greater than or equal to 0.1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@reconnect_window.nil? && @reconnect_window > 300
      return false if !@reconnect_window.nil? && @reconnect_window < 0.1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reconnect_window Value to be assigned
    def reconnect_window=(reconnect_window)
      if !reconnect_window.nil? && reconnect_window > 300
        fail ArgumentError, 'invalid value for "reconnect_window", must be smaller than or equal to 300.'
      end

      if !reconnect_window.nil? && reconnect_window < 0.1
        fail ArgumentError, 'invalid value for "reconnect_window", must be greater than or equal to 0.1.'
      end

      @reconnect_window = reconnect_window
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          playback_policy == o.playback_policy &&
          new_asset_settings == o.new_asset_settings &&
          reconnect_window == o.reconnect_window &&
          passthrough == o.passthrough &&
          audio_only == o.audio_only &&
          reduced_latency == o.reduced_latency &&
          low_latency == o.low_latency &&
          test == o.test &&
          simulcast_targets == o.simulcast_targets
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [playback_policy, new_asset_settings, reconnect_window, passthrough, audio_only, reduced_latency, low_latency, test, simulcast_targets].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MuxRuby.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
