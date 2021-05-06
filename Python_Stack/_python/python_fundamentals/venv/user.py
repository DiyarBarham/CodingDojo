class User:
    def __init__(self, name, email):
        self.name = name
        self.email = email
        self.account_balance =0

    def make_deposit(self, amount):
        self.account_balance += amount

    def account_withdrawal(self, amount):
        self.account_balance -= amount

    def display_user_balance(self):
        print(f"User: {self.name}, Balance: ${self.account_balance}")

    def transfer_money(self,transferto, amount):
        self.account_balance -= amount
        transferto.account_balance += amount

user1 = User("Ahmad", "abc@abc.com")
user2 = User("Mohammed", "aaa@abc.com")
user3 = User("Yazan", "bbb@abc.com")

user1.make_deposit(500)
user1.make_deposit(200)
user1.make_deposit(300)
user1.account_withdrawal(100)
user1.display_user_balance()

user2.make_deposit(200)
user2.make_deposit(300)
user2.account_withdrawal(100)
user2.account_withdrawal(300)
user2.display_user_balance()

user3.make_deposit(800)
user3.account_withdrawal(200)
user3.account_withdrawal(300)
user3.account_withdrawal(100)
user3.display_user_balance()

user1.transfer_money(user2, 300)
user1.display_user_balance()
user2.display_user_balance()