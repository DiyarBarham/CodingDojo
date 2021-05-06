class User:
    def __init__(self, name, email):
        self.name = name
        self.email = email
        self.account = BankAccount()

    def make_deposit(self, amount):
        self.account.deposit(amount)
        return self

    def account_withdrawal(self, amount):
        self.account.withdraw(amount)
        return self

    def display_user_balance(self):
        print(f"User: {self.name}, Balance: ${self.account.display_account_info()}")
        return self

    def transfer_money(self,transferto, amount):
        self.account.balance -= amount
        transferto.account.balance += amount
        return self


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