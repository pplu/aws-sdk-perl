
package Paws::Route53::TestDNSAnswer;
  use Moose;
  has EDNS0ClientSubnetIP => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'edns0clientsubnetip' );
  has EDNS0ClientSubnetMask => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'edns0clientsubnetmask' );
  has HostedZoneId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'hostedzoneid' , required => 1);
  has RecordName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'recordname' , required => 1);
  has RecordType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'recordtype' , required => 1);
  has ResolverIP => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resolverip' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestDNSAnswer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/testdnsanswer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::TestDNSAnswerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::TestDNSAnswer

=head1 ATTRIBUTES


=head2 EDNS0ClientSubnetIP => Str





=head2 EDNS0ClientSubnetMask => Str





=head2 B<REQUIRED> HostedZoneId => Str





=head2 B<REQUIRED> RecordName => Str





=head2 B<REQUIRED> RecordType => Str



Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">

=head2 ResolverIP => Str






=cut

