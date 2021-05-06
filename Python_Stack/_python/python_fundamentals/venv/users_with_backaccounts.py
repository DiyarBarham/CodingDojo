class User:

    def __init__(self, name, email):
        self.account = [BankAccount()]
        self.name = name
        self.email = email

    def make_accout(self, amount=0):
        self.account.append(BankAccount(amount))
        return self

    def make_deposit(self, amount, accountnumber):
        self.account[accountnumber].deposit(amount)
        return self

    def account_withdrawal(self, amount, accountnumber):
        self.account[accountnumber].withdraw(amount)
        return self

    def transfer_money(self, amount, myacc, toacc):
        self.account_withdrawal(amount,myacc)
        self.account[toacc].deposit(amount)
        return self


class BankAccount:
    def __init__(self, balance =0, int_rate = 0.01):
        self.int_rate = int_rate
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount

    def withdraw(self, amount):
        self.balance -= amount
        return self

    def display_account_info(self):
        print(f"account balance: {self.balance}, int_rate:{self.int_rate}")
        return self.balance

    def yield_interest(self):
        self.balance =self.balance+(self.balance* self.int_rate)
        return self

a = User("ah", "asdf@")
a.make_accout(200)
a.make_deposit(100,1)
a.transfer_money(200,1,0)
a.account[1].display_account_info()
a.account[0].display_account_info()
