#!/usr/bin/env python

import csv

stations = []
filename='201601-citibike-tripdata.csv'
with open(filename, 'r') as csvfile:
    filereader = csv.reader(csvfile, delimiter=',')
    header = next(filereader)
    for row in filereader:
        stations.append(row[4]+' - '+row[8])
    
counts = {}
uniquestations = set(stations)
for station in uniquestations:
    counts[station] = stations.count(station)
    

maxcount = 0
maxstation = ""
for key in counts:
    if counts[key] >= maxcount:
        maxcount = counts[key]
        maxstation = key
        
print('The most popular station pair is ', maxstation, ' with ', maxcount, 'entries.')
