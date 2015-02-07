from math import sqrt, floor

def is_square(x):
    return int(pow(floor(sqrt(x)),2)) == x

def get_moir_next(d, g, h, k, k0):
    gn = -g+k*h
    hn = (d-gn*gn)/h
    kn = int(floor(k0 + gn)/hn)
    return (gn, hn, kn)

tmp_max = 0
answer_idx = 0
for i in xrange(1,1000):
    if is_square(i):
        continue

    g = [0]
    h = [1]
    k = [int(floor(sqrt(i)))]
    x = [1]
    y = [0]
    j = 0
    while True:
        j += 1
        (gn,hn,kn) = get_moir_next(i,g[-1],h[-1],k[-1],k[0])
        g_tmp = g[-1]
        h_tmp = h[-1]
        g.append(gn)
        h.append(hn)
        k.append(kn)
        if g_tmp == gn or h_tmp == hn:
            target_idx_span = (g_tmp == gn)
            break
    denominator = h_tmp
    idx = j-1

    for j in xrange(1,len(g)):
        if j == 1:
            y.append(1 + k[j] * y[-1])
        else:
            y.append(y[-2] + k[j-1] * y[j-1])
        x.append(g[j] * y[-1] + h[j] * y[-2])

    if target_idx_span:
        A = x[idx]
        B = y[idx]
        C = x[idx]
        D = y[idx]
    else:
        A = x[idx]
        B = y[idx]
        C = x[idx+1]
        D = y[idx+1]
    # x*x + i*y*y == +-1
    x = (A*C + B*D*i)/denominator
    y = (B*C + A*D)/denominator

    if x*x - y*y*i == 1:
        xx = x
        yy = y
    else:
        # x*x - y*y*i == -1
        xx = x*x + y*y*i
        yy = x*y*2
    if xx > tmp_max:
        tmp_max = xx
        answer_idx = i
    #print(i,xx,yy)
print(answer_idx)

