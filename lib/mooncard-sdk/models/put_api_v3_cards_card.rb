=begin
#Mooncard API

#Access Mooncard data from anywhere

OpenAPI spec version: 3.0.0
Contact: hello@mooncard.co
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.10

=end

require 'date'

module Mooncard
  class PutApiV3CardsCard
    # The managers and cardholder will be notified when the cardholder exceeds this amount per day
    attr_accessor :alert_daily

    # The managers and cardholder will be notified when the cardholder exceeds this amount over a 7 day period
    attr_accessor :alert_weekly

    # The managers and cardholder will be notified when the cardholder exceeds this amount over a 30 day period
    attr_accessor :alert_monthly

    # Choose how the manager will be notified
    attr_accessor :alert_method

    # The managers will be notified each time the cardholder exceeds this amount in a single payment
    attr_accessor :alert_single_amount

    # Enables cash withdrawals at ATMs
    attr_accessor :allow_mccs_atm

    # Enables payments in gas stations
    attr_accessor :allow_mccs_fuel

    # Enables payments for public transportations (bus, train...)
    attr_accessor :allow_mccs_public_transport

    # Enables payments in car parks
    attr_accessor :allow_mccs_parking

    # Enables payments for taxi and black car services
    attr_accessor :allow_mccs_taxi

    # Enables payments for plane tickets
    attr_accessor :allow_mccs_airplane

    # Enables payments for car rentals
    attr_accessor :allow_mccs_rental_car

    # Enables payments in hotels
    attr_accessor :allow_mccs_hotel

    # Enables payments in restaurants
    attr_accessor :allow_mccs_restaurant

    # Enables payments for delivery services
    attr_accessor :allow_mccs_courier

    # Enables miscellaneous payments
    attr_accessor :allow_mccs_service

    # Enables financial services (Western Union...)
    attr_accessor :allow_mccs_financial

    # Enables payments on Monday
    attr_accessor :allow_on_monday

    # Enables payments on Tuesday
    attr_accessor :allow_on_tuesday

    # Enables payments on Wednesday
    attr_accessor :allow_on_wednesday

    # Enables payments on Thursday
    attr_accessor :allow_on_thursday

    # Enables payments on Friday
    attr_accessor :allow_on_friday

    # Enables payments on Saturday
    attr_accessor :allow_on_saturday

    # Enables payments on Sunday
    attr_accessor :allow_on_sunday

    # Enables payments only after this time of day (format hh:mm)
    attr_accessor :allow_timeframe_from

    # Enables payments up until this time of day (format hh:mm)
    attr_accessor :allow_timeframe_to

    # Enables payments in foreign countries (not France)
    attr_accessor :countries

    # Schedule when the card will be automatically disabled
    attr_accessor :disable_at

    # Enable or disable payments with the card
    attr_accessor :enabled

    # /!\\BEWARE/!\\ Ignores all thresholds and restrictions
    attr_accessor :free_use

    # Enables online payments (including Amazon, Uber, Google Ads...)
    attr_accessor :online_payment

    # Overrides the thresholds with a temporary amount which expires on the given date
    attr_accessor :temporary_threshold

    # Overrides the thresholds with the temporary amount which expires on this date
    attr_accessor :temporary_expiration_date

    # Payment amount total allowed per day
    attr_accessor :threshold_daily

    # Payment amount total allowed over a 7 day period
    attr_accessor :threshold_weekly

    # Payment amount total allowed over a 30 day period
    attr_accessor :threshold_monthly

    # 9 digit, unique identifier
    attr_accessor :token

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
        :'alert_daily' => :'alert_daily',
        :'alert_weekly' => :'alert_weekly',
        :'alert_monthly' => :'alert_monthly',
        :'alert_method' => :'alert_method',
        :'alert_single_amount' => :'alert_single_amount',
        :'allow_mccs_atm' => :'allow_mccs_atm',
        :'allow_mccs_fuel' => :'allow_mccs_fuel',
        :'allow_mccs_public_transport' => :'allow_mccs_public_transport',
        :'allow_mccs_parking' => :'allow_mccs_parking',
        :'allow_mccs_taxi' => :'allow_mccs_taxi',
        :'allow_mccs_airplane' => :'allow_mccs_airplane',
        :'allow_mccs_rental_car' => :'allow_mccs_rental_car',
        :'allow_mccs_hotel' => :'allow_mccs_hotel',
        :'allow_mccs_restaurant' => :'allow_mccs_restaurant',
        :'allow_mccs_courier' => :'allow_mccs_courier',
        :'allow_mccs_service' => :'allow_mccs_service',
        :'allow_mccs_financial' => :'allow_mccs_financial',
        :'allow_on_monday' => :'allow_on_monday',
        :'allow_on_tuesday' => :'allow_on_tuesday',
        :'allow_on_wednesday' => :'allow_on_wednesday',
        :'allow_on_thursday' => :'allow_on_thursday',
        :'allow_on_friday' => :'allow_on_friday',
        :'allow_on_saturday' => :'allow_on_saturday',
        :'allow_on_sunday' => :'allow_on_sunday',
        :'allow_timeframe_from' => :'allow_timeframe_from',
        :'allow_timeframe_to' => :'allow_timeframe_to',
        :'countries' => :'countries',
        :'disable_at' => :'disable_at',
        :'enabled' => :'enabled',
        :'free_use' => :'free_use',
        :'online_payment' => :'online_payment',
        :'temporary_threshold' => :'temporary_threshold',
        :'temporary_expiration_date' => :'temporary_expiration_date',
        :'threshold_daily' => :'threshold_daily',
        :'threshold_weekly' => :'threshold_weekly',
        :'threshold_monthly' => :'threshold_monthly',
        :'token' => :'token'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alert_daily' => :'Integer',
        :'alert_weekly' => :'Integer',
        :'alert_monthly' => :'Integer',
        :'alert_method' => :'String',
        :'alert_single_amount' => :'Integer',
        :'allow_mccs_atm' => :'BOOLEAN',
        :'allow_mccs_fuel' => :'BOOLEAN',
        :'allow_mccs_public_transport' => :'BOOLEAN',
        :'allow_mccs_parking' => :'BOOLEAN',
        :'allow_mccs_taxi' => :'BOOLEAN',
        :'allow_mccs_airplane' => :'BOOLEAN',
        :'allow_mccs_rental_car' => :'BOOLEAN',
        :'allow_mccs_hotel' => :'BOOLEAN',
        :'allow_mccs_restaurant' => :'BOOLEAN',
        :'allow_mccs_courier' => :'BOOLEAN',
        :'allow_mccs_service' => :'BOOLEAN',
        :'allow_mccs_financial' => :'BOOLEAN',
        :'allow_on_monday' => :'BOOLEAN',
        :'allow_on_tuesday' => :'BOOLEAN',
        :'allow_on_wednesday' => :'BOOLEAN',
        :'allow_on_thursday' => :'BOOLEAN',
        :'allow_on_friday' => :'BOOLEAN',
        :'allow_on_saturday' => :'BOOLEAN',
        :'allow_on_sunday' => :'BOOLEAN',
        :'allow_timeframe_from' => :'String',
        :'allow_timeframe_to' => :'String',
        :'countries' => :'BOOLEAN',
        :'disable_at' => :'DateTime',
        :'enabled' => :'BOOLEAN',
        :'free_use' => :'BOOLEAN',
        :'online_payment' => :'BOOLEAN',
        :'temporary_threshold' => :'Integer',
        :'temporary_expiration_date' => :'Date',
        :'threshold_daily' => :'Integer',
        :'threshold_weekly' => :'Integer',
        :'threshold_monthly' => :'Integer',
        :'token' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'alert_daily')
        self.alert_daily = attributes[:'alert_daily']
      end

      if attributes.has_key?(:'alert_weekly')
        self.alert_weekly = attributes[:'alert_weekly']
      end

      if attributes.has_key?(:'alert_monthly')
        self.alert_monthly = attributes[:'alert_monthly']
      end

      if attributes.has_key?(:'alert_method')
        self.alert_method = attributes[:'alert_method']
      end

      if attributes.has_key?(:'alert_single_amount')
        self.alert_single_amount = attributes[:'alert_single_amount']
      end

      if attributes.has_key?(:'allow_mccs_atm')
        self.allow_mccs_atm = attributes[:'allow_mccs_atm']
      end

      if attributes.has_key?(:'allow_mccs_fuel')
        self.allow_mccs_fuel = attributes[:'allow_mccs_fuel']
      end

      if attributes.has_key?(:'allow_mccs_public_transport')
        self.allow_mccs_public_transport = attributes[:'allow_mccs_public_transport']
      end

      if attributes.has_key?(:'allow_mccs_parking')
        self.allow_mccs_parking = attributes[:'allow_mccs_parking']
      end

      if attributes.has_key?(:'allow_mccs_taxi')
        self.allow_mccs_taxi = attributes[:'allow_mccs_taxi']
      end

      if attributes.has_key?(:'allow_mccs_airplane')
        self.allow_mccs_airplane = attributes[:'allow_mccs_airplane']
      end

      if attributes.has_key?(:'allow_mccs_rental_car')
        self.allow_mccs_rental_car = attributes[:'allow_mccs_rental_car']
      end

      if attributes.has_key?(:'allow_mccs_hotel')
        self.allow_mccs_hotel = attributes[:'allow_mccs_hotel']
      end

      if attributes.has_key?(:'allow_mccs_restaurant')
        self.allow_mccs_restaurant = attributes[:'allow_mccs_restaurant']
      end

      if attributes.has_key?(:'allow_mccs_courier')
        self.allow_mccs_courier = attributes[:'allow_mccs_courier']
      end

      if attributes.has_key?(:'allow_mccs_service')
        self.allow_mccs_service = attributes[:'allow_mccs_service']
      end

      if attributes.has_key?(:'allow_mccs_financial')
        self.allow_mccs_financial = attributes[:'allow_mccs_financial']
      end

      if attributes.has_key?(:'allow_on_monday')
        self.allow_on_monday = attributes[:'allow_on_monday']
      end

      if attributes.has_key?(:'allow_on_tuesday')
        self.allow_on_tuesday = attributes[:'allow_on_tuesday']
      end

      if attributes.has_key?(:'allow_on_wednesday')
        self.allow_on_wednesday = attributes[:'allow_on_wednesday']
      end

      if attributes.has_key?(:'allow_on_thursday')
        self.allow_on_thursday = attributes[:'allow_on_thursday']
      end

      if attributes.has_key?(:'allow_on_friday')
        self.allow_on_friday = attributes[:'allow_on_friday']
      end

      if attributes.has_key?(:'allow_on_saturday')
        self.allow_on_saturday = attributes[:'allow_on_saturday']
      end

      if attributes.has_key?(:'allow_on_sunday')
        self.allow_on_sunday = attributes[:'allow_on_sunday']
      end

      if attributes.has_key?(:'allow_timeframe_from')
        self.allow_timeframe_from = attributes[:'allow_timeframe_from']
      end

      if attributes.has_key?(:'allow_timeframe_to')
        self.allow_timeframe_to = attributes[:'allow_timeframe_to']
      end

      if attributes.has_key?(:'countries')
        self.countries = attributes[:'countries']
      end

      if attributes.has_key?(:'disable_at')
        self.disable_at = attributes[:'disable_at']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'free_use')
        self.free_use = attributes[:'free_use']
      end

      if attributes.has_key?(:'online_payment')
        self.online_payment = attributes[:'online_payment']
      end

      if attributes.has_key?(:'temporary_threshold')
        self.temporary_threshold = attributes[:'temporary_threshold']
      end

      if attributes.has_key?(:'temporary_expiration_date')
        self.temporary_expiration_date = attributes[:'temporary_expiration_date']
      end

      if attributes.has_key?(:'threshold_daily')
        self.threshold_daily = attributes[:'threshold_daily']
      end

      if attributes.has_key?(:'threshold_weekly')
        self.threshold_weekly = attributes[:'threshold_weekly']
      end

      if attributes.has_key?(:'threshold_monthly')
        self.threshold_monthly = attributes[:'threshold_monthly']
      end

      if attributes.has_key?(:'token')
        self.token = attributes[:'token']
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
      alert_method_validator = EnumAttributeValidator.new('String', ['none', 'sms', 'email'])
      return false unless alert_method_validator.valid?(@alert_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alert_method Object to be assigned
    def alert_method=(alert_method)
      validator = EnumAttributeValidator.new('String', ['none', 'sms', 'email'])
      unless validator.valid?(alert_method)
        fail ArgumentError, 'invalid value for "alert_method", must be one of #{validator.allowable_values}.'
      end
      @alert_method = alert_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alert_daily == o.alert_daily &&
          alert_weekly == o.alert_weekly &&
          alert_monthly == o.alert_monthly &&
          alert_method == o.alert_method &&
          alert_single_amount == o.alert_single_amount &&
          allow_mccs_atm == o.allow_mccs_atm &&
          allow_mccs_fuel == o.allow_mccs_fuel &&
          allow_mccs_public_transport == o.allow_mccs_public_transport &&
          allow_mccs_parking == o.allow_mccs_parking &&
          allow_mccs_taxi == o.allow_mccs_taxi &&
          allow_mccs_airplane == o.allow_mccs_airplane &&
          allow_mccs_rental_car == o.allow_mccs_rental_car &&
          allow_mccs_hotel == o.allow_mccs_hotel &&
          allow_mccs_restaurant == o.allow_mccs_restaurant &&
          allow_mccs_courier == o.allow_mccs_courier &&
          allow_mccs_service == o.allow_mccs_service &&
          allow_mccs_financial == o.allow_mccs_financial &&
          allow_on_monday == o.allow_on_monday &&
          allow_on_tuesday == o.allow_on_tuesday &&
          allow_on_wednesday == o.allow_on_wednesday &&
          allow_on_thursday == o.allow_on_thursday &&
          allow_on_friday == o.allow_on_friday &&
          allow_on_saturday == o.allow_on_saturday &&
          allow_on_sunday == o.allow_on_sunday &&
          allow_timeframe_from == o.allow_timeframe_from &&
          allow_timeframe_to == o.allow_timeframe_to &&
          countries == o.countries &&
          disable_at == o.disable_at &&
          enabled == o.enabled &&
          free_use == o.free_use &&
          online_payment == o.online_payment &&
          temporary_threshold == o.temporary_threshold &&
          temporary_expiration_date == o.temporary_expiration_date &&
          threshold_daily == o.threshold_daily &&
          threshold_weekly == o.threshold_weekly &&
          threshold_monthly == o.threshold_monthly &&
          token == o.token
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alert_daily, alert_weekly, alert_monthly, alert_method, alert_single_amount, allow_mccs_atm, allow_mccs_fuel, allow_mccs_public_transport, allow_mccs_parking, allow_mccs_taxi, allow_mccs_airplane, allow_mccs_rental_car, allow_mccs_hotel, allow_mccs_restaurant, allow_mccs_courier, allow_mccs_service, allow_mccs_financial, allow_on_monday, allow_on_tuesday, allow_on_wednesday, allow_on_thursday, allow_on_friday, allow_on_saturday, allow_on_sunday, allow_timeframe_from, allow_timeframe_to, countries, disable_at, enabled, free_use, online_payment, temporary_threshold, temporary_expiration_date, threshold_daily, threshold_weekly, threshold_monthly, token].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = Mooncard.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
