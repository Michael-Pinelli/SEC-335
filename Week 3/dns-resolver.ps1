$prefix = $args[0]
$server = $args[1]
1..254 | ForEach-Object {Resolve-DnsName -DnsOnly "$prefix.$_" -Server "$server" -ErrorAction Ignore}
