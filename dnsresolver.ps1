param($network,$server)
$i = 1..254
for($i= 1;$i -lt 255; $i++){
   Resolve-DnsName -DnsOnly -Name $network"."$i -Server $server -ErrorAction Ignore
}
