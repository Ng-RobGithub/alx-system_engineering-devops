#!/usr/bin/env python3
from scapy.all import *

# Define the packet sniffing function
def packet_sniffer(packet):
    if packet.haslayer(TCP) and packet.haslayer(Raw):
        # Filter packets based on specific criteria
        if b"GET" in packet[Raw].load or b"POST" in packet[Raw].load:
            print(packet[IP].src, "-->", packet[IP].dst)
            print(packet[TCP].sport, "-->", packet[TCP].dport)
            print(packet[Raw].load)

# Start the packet sniffing process
sniff(iface="eth0", prn=packet_sniffer, store=0)
