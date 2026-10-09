actor {
  var currentBalance : Nat = 0;

  public query func checkBalance() : async Nat {
    return currentBalance;
  };

  public func deposit(amount : Nat) : async () {
    currentBalance := currentBalance + amount;
  };

  public func withdraw(amount : Nat) : async () {
    if (amount <= currentBalance) {
      currentBalance := currentBalance - amount;
    };
  };
};