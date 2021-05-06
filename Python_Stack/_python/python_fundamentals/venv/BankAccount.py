class BankAccount:
    def __init__(self, balance =0, int_rate = 0.01):
        self.int_rate = int_rate
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount
        return self

    def withdraw(self, amount):
        self.balance -= amount
        return self

    def display_account_info(self):
        print(f"account balance: {self.balance}, int_rate:{self.int_rate}")
        return self

    def yield_interest(self):
        self.balance =self.balance+(self.balance* self.int_rate)
        return self

acc1 = BankAccount()
acc2 = BankAccount()

acc1.deposit(300).deposit(200).deposit(100).withdraw(200).yield_interest().display_account_info()
acc2.deposit(1000).deposit(5000).withdraw(200).withdraw(100).withdraw(300).withdraw(100).yield_interest().display_account_info()

