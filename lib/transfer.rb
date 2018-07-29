class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, amount, status = "pending")
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = status
  end
  
  def valid?
    transfer_class = File.read("lib/transfer.rb")
    if transfer_class.scan(sender.valid? && receiver.valid?).length) == 1
      true
    else
      false
    end

    # if sender.valid? == true && receiver.valid? == true
    #   true
    # else
    #   false
    # end
  end
  
end
