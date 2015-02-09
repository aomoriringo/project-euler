#!/usr/bin/env python
from itertools import combinations, permutations

PRIME_MAX_NUM = 10000

def prime_table(n):
    list = [True for _ in range(n+1)]
    i=2
    while i*i <= n:
        if list[i]:
            j = i+i
            while j <= n:
                list[j] = False
                j += i
        i += 1
    table = [i for i in range(n+1) if list[i] and i >= 2]
    return table

def is_prime(n):
    i = 2
    while i*i <= n:
        if n%i == 0:
            return False
        i += 1
    return True

def get_incr_prime_set(prime_set_list):
    incr_prime_set = []
    for target_primes in prime_set_list:
        max_p = target_primes[-1]
        for new_prime in primes:
            if new_prime < max_p or \
                    new_prime in target_primes:
                continue
            is_prime_set = True
            for target_prime in target_primes:
                p1 = int(str(target_prime) + str(new_prime))
                p2 = int(str(new_prime) + str(target_prime))
                if (not is_prime(p1)) or (not is_prime(p2)):
                    is_prime_set = False
                    break
            if is_prime_set:
                incr_prime_set.append(target_primes + (new_prime,))
                # print(target_primes + (new_prime,))
    return incr_prime_set

def get_prime_set(size):
    if size==0:
        return [(x,) for x in primes]
    return get_incr_prime_set(get_prime_set(size-1))

primes = prime_table(PRIME_MAX_NUM)
prime_set = get_prime_set(3)

minsum = 100000000000
minprimes = None
for target in prime_set:
    s = sum(target)
    if s < minsum:
        minsum = s
        minprimes = target

print('primes ->', minprimes)
print('sum ->', minsum)
