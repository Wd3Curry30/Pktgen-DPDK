-- Lua uses '--' as comment to end of line read the
-- manual for more comment options.
local seq_table = {			-- entries can be in any order
    ["eth_dst_addr"] = "0011:4455:6677",
    ["eth_src_addr"] = "0033:1234:5678",
    ["ip_dst_addr"] = "10.11.0.1",
    ["ip_src_addr"] = "10.12.0.1/16",	-- the 16 is the size of the mask value
    ["sport"] = 9000,			-- Standard port numbers
    ["dport"] = 2152,			-- Standard port numbers
    ["ethType"] = "ipv4",	-- ipv4|ipv6|vlan
    ["ipProto"] = "udp",	-- udp|tcp|icmp
    ["vlanid"] = 100,			-- 1 - 4095
    ["pktSize"] = 128,		-- 64 - 1518
    ["gtpu_teid"] = 1000	-- GTPu TEID (Set dport=2152)
  };
-- seqTable( seq#, portlist, table );
pktgen.seqTable(0, "all", seq_table );
pktgen.set("all", "seqCnt", 1);
pktgen.page("seq");
