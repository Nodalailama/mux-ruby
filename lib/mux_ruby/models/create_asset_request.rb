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
  class CreateAssetRequest
    # An array of objects that each describe an input file to be used to create the asset. As a shortcut, input can also be a string URL for a file when only one input file is used. See `input[].url` for requirements.
    attr_accessor :input

    # An array of playback policy names that you want applied to this asset and available through `playback_ids`. Options include: `\"public\"` (anyone with the playback URL can stream the asset). And `\"signed\"` (an additional access token is required to play the asset). If no playback_policy is set, the asset will have no playback IDs and will therefore not be playable. For simplicity, a single string name can be used in place of the array in the case of only one playback policy.
    attr_accessor :playback_policy

    attr_accessor :per_title_encode

    # Arbitrary metadata that will be included in the asset details and related webhooks. Can be used to store your own ID for a video along with the asset. **Max: 255 characters**.
    attr_accessor :passthrough

    # Specify what level (if any) of support for mp4 playback. In most cases you should use our default HLS-based streaming playback ({playback_id}.m3u8) which can automatically adjust to viewers' connection speeds, but an mp4 can be useful for some legacy devices or downloading for offline playback. See the [Download your videos guide](/guides/video/download-your-videos) for more information.
    attr_accessor :mp4_support

    # Normalize the audio track loudness level. This parameter is only applicable to on-demand (not live) assets.
    attr_accessor :normalize_audio

    # Specify what level (if any) of support for master access. Master access can be enabled temporarily for your asset to be downloaded. See the [Download your videos guide](/guides/video/download-your-videos) for more information.
    attr_accessor :master_access

    # Marks the asset as a test asset when the value is set to true. A Test asset can help evaluate the Mux Video APIs without incurring any cost. There is no limit on number of test assets created. Test asset are watermarked with the Mux logo, limited to 10 seconds, deleted after 24 hrs.
    attr_accessor :test

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'input' => :'input',
        :'playback_policy' => :'playback_policy',
        :'per_title_encode' => :'per_title_encode',
        :'passthrough' => :'passthrough',
        :'mp4_support' => :'mp4_support',
        :'normalize_audio' => :'normalize_audio',
        :'master_access' => :'master_access',
        :'test' => :'test'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'input' => :'Array<InputSettings>',
        :'playback_policy' => :'Array<PlaybackPolicy>',
        :'per_title_encode' => :'Boolean',
        :'passthrough' => :'String',
        :'mp4_support' => :'String',
        :'normalize_audio' => :'Boolean',
        :'master_access' => :'String',
        :'test' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `MuxRuby::CreateAssetRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MuxRuby::CreateAssetRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'input')
        if (value = attributes[:'input']).is_a?(Array)
          self.input = value
        end
      end

      if attributes.key?(:'playback_policy')
        if (value = attributes[:'playback_policy']).is_a?(Array)
          self.playback_policy = value
        end
      end

      if attributes.key?(:'per_title_encode')
        self.per_title_encode = attributes[:'per_title_encode']
      end

      if attributes.key?(:'passthrough')
        self.passthrough = attributes[:'passthrough']
      end

      if attributes.key?(:'mp4_support')
        self.mp4_support = attributes[:'mp4_support']
      end

      if attributes.key?(:'normalize_audio')
        self.normalize_audio = attributes[:'normalize_audio']
      else
        self.normalize_audio = false
      end

      if attributes.key?(:'master_access')
        self.master_access = attributes[:'master_access']
      end

      if attributes.key?(:'test')
        self.test = attributes[:'test']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      mp4_support_validator = EnumAttributeValidator.new('String', ["none", "standard"])
      return false unless mp4_support_validator.valid?(@mp4_support)
      master_access_validator = EnumAttributeValidator.new('String', ["none", "temporary"])
      return false unless master_access_validator.valid?(@master_access)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mp4_support Object to be assigned
    def mp4_support=(mp4_support)
      validator = EnumAttributeValidator.new('String', ["none", "standard"])
      unless validator.valid?(mp4_support)
        fail ArgumentError, "invalid value for \"mp4_support\", must be one of #{validator.allowable_values}."
      end
      @mp4_support = mp4_support
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] master_access Object to be assigned
    def master_access=(master_access)
      validator = EnumAttributeValidator.new('String', ["none", "temporary"])
      unless validator.valid?(master_access)
        fail ArgumentError, "invalid value for \"master_access\", must be one of #{validator.allowable_values}."
      end
      @master_access = master_access
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          input == o.input &&
          playback_policy == o.playback_policy &&
          per_title_encode == o.per_title_encode &&
          passthrough == o.passthrough &&
          mp4_support == o.mp4_support &&
          normalize_audio == o.normalize_audio &&
          master_access == o.master_access &&
          test == o.test
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [input, playback_policy, per_title_encode, passthrough, mp4_support, normalize_audio, master_access, test].hash
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
