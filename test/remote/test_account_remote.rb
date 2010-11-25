require 'helper'

module RubyPsigate
  class TestAccountRemote < Test::Unit::TestCase
    
    # Helpers
    def credentials
      @credential = Credential.new(
        :CID => "1000001", :UserID => "teststore", :password => "testpass"
      )
    end
    
    def credit_card
      @credit_card = PgCreditcard.new(
        :name => "Homer Simpsons",
        :number => "4111111111111111",
        :month  => "03",
        :year   => "20",
        :cvv    => "123"
      )
    end
    
    # Add new account

    def test_successfully_in_adding_account
      @credential = credentials
      @credit_card = credit_card

      @account = Account.new(
        :name => "Home Simpson",
        :email => "homer@simpsons.com",
        :address1 => "1234 Evergrove Drive",
        :address2 => nil,
        :city => "Toronto",
        :province => "ON",
        :postal_code => "M2N3A3",
        :country => "CA",
        :phone => "416-111-1111",
        :credit_card => @credit_card,
        :credential => @credential
      )

      result = @account.register
      assert result.success?
    end

    def test_failure_in_adding_account
      @credential = credentials
      @credit_card = credit_card

      @account = Account.new(
        :name => "Home Simpson",
        :email => "homer@simpsons.com",
        :address1 => "1234 Evergrove Drive",
        :address2 => nil,
        :city => "Toronto",
        :province => "ON",
        :postal_code => "M2N3A3",
        :country => "CA",
        :phone => "416-111-1111",
        :credit_card => @credit_card,
        :credential => @credential
      )
      RubyPsigate::Connection.any_instance.expects(:post).raises(RubyPsigate::ConnectionError)
      result = @account.register
      assert !result.success?
    end
    
    # Finding an existing account
    
    def test_finding_an_account_with_account_id
      account_id = nil
      @account = Account.find(account_id)
      assert @account
    end

    # Delete account

    def test_successfully_deleting_account


      response = @account.delete
      assert response.success?
    end

    def test_failure_in_deleting_account


      response = @account.delete
      assert !response.success?
    end

    # Update account

    def test_successfully_updating_account

      response = @account.update
    end

    def test_failure_in_updating_account

    end
    
    
  end
end