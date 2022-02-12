nested_object1={'x':{'y':{'z':'a'},'month':'feb'}}
nested_object2={'year':{'2022':{'month':{'feb':{'day':'sat'}}}}}
list1=[nested_object1,nested_object2]
def func(nested_object):
    for i,j in nested_object.items():
        if isinstance(j,dict) : 
            for nest in func(j):
                yield(i,nest)
        else:
            yield(i,j)

for i in list1:
    for items in func(i):
        print(items)