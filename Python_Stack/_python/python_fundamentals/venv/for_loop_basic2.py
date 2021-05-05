#1
def biggie(list):
    for i in range(0,len(list)):
        if list[i]>0:
            list[i]='big'
    return list
list = [-3,0,1,2,3]
print(biggie(list))
#2
def countpos(list):
    count=0
    for i in range(0,len(list)):
        if list[i]>0:
            count+=1
    list[len(list)-1]=count
    return list
list = [1,6,-4,-2,-7,-2]
print(countpos(list))
#3
def sum_total(list):
    sum=0
    for i in list:
        sum+= i
    return sum
list =[1,2,3,4]
print(sum_total(list))
#4
def avarage(list):
    avg=0
    for i in list:
        avg+= i
    avg = avg/len(list)
    return avg
list=[1,2,3,4]
print(avarage(list))
#5
def length(list):
    return len(list)
list=[37,2,1,-9]
print(length(list))
#6
def minimum(list):
    if len(list)==0:
        return False
    min = list[0]
    for i in list:
        if i<min:
            min=i
    return min
list=[37,2,1,-9]
print(minimum(list))
#7
def maximum(list):
    if len(list)==0:
        return False
    max = list[0]
    for i in list:
        if i>max:
            max=i
    return max
list=[37,2,1,-9]
print(maximum(list))
#8
def ultimate(list):
    answer ={'sumtotal':sum_total(list),'avarege':avarage(list),'minimum':minimum(list),'maximum':maximum(list),'length':length(list)}
    return answer
list=[37,2,1,-9]
print(ultimate(list))
#9
def reverse(list):
    for i in range(len(list)):
        list.insert(i, list[len(list)-1])
        list.pop()
    return list
list=[37,2,1,-9]
print(reverse(list))