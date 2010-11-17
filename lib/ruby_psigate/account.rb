module RubyPsigate
  class Account
    
    attr_accessor :account_id
    attr_accessor :name, :company, :email, :comments
    attr_accessor :address1, :address2, :city, :province, :postal_code, :country, :phone, :fax
    
    alias_method :state, :province
    alias_method :state=, :province=
    alias_method :zipcode, :postal_code
    alias_method :zipcode=, :postal_code=
    
    def credit_card=(cc_object)
      raise ArgumentError unless cc_object.is_a?(PgCreditcard)
    end
    
  end
end