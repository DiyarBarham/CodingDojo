class BankAccount:
    def __init__(self, int_rate = 0.01, balance =0):
        self.int_rate = int_rate
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount

    def withdraw(self, amount):
        self.balance -= amount

    def display_account_info(self):
        print(f"account balance: {self.balance}, int_rate:{self.int_rate}")

    def yield_interest(self):
        self.balance *= self.int_rate