# Recursively convert all *.pcapng files to *.pcap
cd input
find . -type f -name '*.pcapng' -print0 | while IFS= read -r -d '' f; do editcap -F libpcap "$f" "${f%.pcapng}.pcap"; done
mv *.pcap ../output
