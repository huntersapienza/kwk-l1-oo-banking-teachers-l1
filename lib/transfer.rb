class Transfer
  
  attr_accessor :sender, :receiver, :status
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end
end
