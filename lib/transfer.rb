class Transfer
  
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if valid? && @status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
    elsif
      "Transaction rejected. Please check your account balance."
    end
  end
  
end
