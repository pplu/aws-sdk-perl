
package Paws::Route53::TestDNSAnswer;
  use Moose;
  has EDNS0ClientSubnetIP => (is => 'ro', isa => 'Str', query_name => 'edns0clientsubnetip', traits => ['ParamInQuery']);
  has EDNS0ClientSubnetMask => (is => 'ro', isa => 'Str', query_name => 'edns0clientsubnetmask', traits => ['ParamInQuery']);
  has HostedZoneId => (is => 'ro', isa => 'Str', query_name => 'hostedzoneid', traits => ['ParamInQuery'], required => 1);
  has RecordName => (is => 'ro', isa => 'Str', query_name => 'recordname', traits => ['ParamInQuery'], required => 1);
  has RecordType => (is => 'ro', isa => 'Str', query_name => 'recordtype', traits => ['ParamInQuery'], required => 1);
  has ResolverIP => (is => 'ro', isa => 'Str', query_name => 'resolverip', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestDNSAnswer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/testdnsanswer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::TestDNSAnswerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::TestDNSAnswer - Arguments for method TestDNSAnswer on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestDNSAnswer on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method TestDNSAnswer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestDNSAnswer.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $TestDNSAnswerResponse = $route53->TestDNSAnswer(
      HostedZoneId          => 'MyResourceId',
      RecordName            => 'MyDNSName',
      RecordType            => 'SOA',
      EDNS0ClientSubnetIP   => 'MyIPAddress',     # OPTIONAL
      EDNS0ClientSubnetMask => 'MySubnetMask',    # OPTIONAL
      ResolverIP            => 'MyIPAddress',     # OPTIONAL
    );

    # Results:
    my $Nameserver   = $TestDNSAnswerResponse->Nameserver;
    my $Protocol     = $TestDNSAnswerResponse->Protocol;
    my $RecordData   = $TestDNSAnswerResponse->RecordData;
    my $RecordName   = $TestDNSAnswerResponse->RecordName;
    my $RecordType   = $TestDNSAnswerResponse->RecordType;
    my $ResponseCode = $TestDNSAnswerResponse->ResponseCode;

    # Returns a L<Paws::Route53::TestDNSAnswerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/TestDNSAnswer>

=head1 ATTRIBUTES


=head2 EDNS0ClientSubnetIP => Str

If the resolver that you specified for resolverip supports EDNS0,
specify the IPv4 or IPv6 address of a client in the applicable
location, for example, C<192.0.2.44> or
C<2001:db8:85a3::8a2e:370:7334>.



=head2 EDNS0ClientSubnetMask => Str

If you specify an IP address for C<edns0clientsubnetip>, you can
optionally specify the number of bits of the IP address that you want
the checking tool to include in the DNS query. For example, if you
specify C<192.0.2.44> for C<edns0clientsubnetip> and C<24> for
C<edns0clientsubnetmask>, the checking tool will simulate a request
from 192.0.2.0/24. The default value is 24 bits for IPv4 addresses and
64 bits for IPv6 addresses.

The range of valid values depends on whether C<edns0clientsubnetip> is
an IPv4 or an IPv6 address:

=over

=item *

B<IPv4>: Specify a value between 0 and 32

=item *

B<IPv6>: Specify a value between 0 and 128

=back




=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that you want Amazon Route 53 to simulate a
query for.



=head2 B<REQUIRED> RecordName => Str

The name of the resource record set that you want Amazon Route 53 to
simulate a query for.



=head2 B<REQUIRED> RecordType => Str

The type of the resource record set.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">, C<"CAA">

=head2 ResolverIP => Str

If you want to simulate a request from a specific DNS resolver, specify
the IP address for that resolver. If you omit this value,
C<TestDnsAnswer> uses the IP address of a DNS resolver in the AWS US
East (N. Virginia) Region (C<us-east-1>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestDNSAnswer in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

