#!/usr/bin/env python3
from scapy.all import sniff

def packet_callback(packet):
    print(packet.show())

sniff(prn=packet_callback, count=10)
