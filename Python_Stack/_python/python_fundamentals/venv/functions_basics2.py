#1
def Countdown(number):
    list=[]
    for n in range(number,-1,-1):
        list.append(n)
    return list
list = Countdown(10)
#2
def print_and_return(list):
    print(list[0])
    return list[1]
list=[1,2]
print_and_return(list)
#3
def  first_plus_length(list):
    return len(list)+list[0]
list=[1,2,3,4,5]
print(first_plus_length(list))
#4
def values_greater_than_second(list):
    temp =[]
    if len(list)<=2:
        return False
    for i in range(len(list)):
        if list[i]>list[1]:
            temp.append(list[i])
    print(len(temp))
    return temp
list=[5,2,3,2,1,4]
list=values_greater_than_second(list)
print(list)
#5
def length_and_value(size, value):
    list =[]
    for i in range(size):
        list.append(value)
    return list
size=4
value=7
list = length_and_value(size, value)
print(list)
