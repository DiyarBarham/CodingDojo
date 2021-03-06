class User:
    def __init__(self, name, email):
        self.name = name
        self.email = email
        self.account_balance =0

    def make_deposit(self, amount):
        self.account_balance += amount
        return self

    def account_withdrawal(self, amount):
        self.account_balance -= amount
        return self

    def display_user_balance(self):
        print(f"User: {self.name}, Balance: ${self.account_balance}")
        return self

    def transfer_money(self,transferto, amount):
        self.account_balance -= amount
        transferto.account_balance += amount
        return self

user1 = User("Ahmad", "abc@abc.com")
user2 = User("Mohammed", "aaa@abc.com")
user3 = User("Yazan", "bbb@abc.com")

user1.make_deposit(500).make_deposit(200).make_deposit(300).account_withdrawal(100).display_user_balance()

user2.make_deposit(200).make_deposit(300).account_withdrawal(100).account_withdrawal(300).display_user_balance()

user3.make_deposit(800).account_withdrawal(200).account_withdrawal(300).account_withdrawal(100).display_user_balance()

user1.transfer_money(user2, 300).display_user_balance()
user2.display_user_balance()