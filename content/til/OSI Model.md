
# Hop-hop vs end-end protocols in OSI Stack
## The Two Different Worlds

**Hop-by-Hop (Layers 1-3)**: Data changes at every router/switch **End-to-End (Layers 4+)**: Data stays the same from source to destination

---
## Layer 1 (Physical): The Wire/Fiber/Air
- no explanation needed.
## Layer 2 (Data Link): MAC Addresses
- **Switches**: Look at MAC addresses and forward frames within the same network segment
- **Routers**: Strip off the old Layer 2 header and create a completely new one for the next hop
    - Source MAC = router's outgoing interface
    - Destination MAC = next router's interface
- **Key point**: MAC addresses change at every single router
## Layer 3 (Network): IP Addresses and Routing
Routers make decisions in two steps:
**Step 1**: Handle the frame (strip old Layer 2, create new Layer 2) **Step 2**: Make routing decision (where does this packet go next?)
### Normal Router (packet in transit)
- Looks at destination IP in routing table
- Source and destination IP addresses stay the same
- Forwards packet to next hop
### Destination Router (packet arrived)
- Recognizes the destination IP is its own public IP
- Looks up NAT table to find which internal device
- Changes destination IP from public to private (e.g., 203.0.113.1 → 192.168.1.100)
- May also change destination port (PAT)
- Forwards to actual device (phone, laptop, etc.)
## Layer 4 (Transport): TCP/UDP - The End-to-End Connection
- **Key point**: This is where true end-to-end communication begins
- Your browser connects to web server using source port + destination port
- These IP addresses and port numbers stay constant throughout the entire journey
- TCP handles reliability, UDP handles speed
- Works regardless of all the hop-by-hop changes happening below

---
## Simple Summary
**Layers 1-3**: Everything changes at every router - physical signals, MAC addresses, routing decisions **Layer 4+**: Your application's connection stays the same from start to finish

This diagram from Computer Networks by Andrew S. Tanenbaum explains it well:
![[Pasted image 20250703145344.png]]