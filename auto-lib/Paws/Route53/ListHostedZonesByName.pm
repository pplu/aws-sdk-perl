
package Paws::Route53::ListHostedZonesByName;
  use Moose;
  has DNSName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'dnsname' );
  has HostedZoneId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'hostedzoneid' );
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxitems' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHostedZonesByName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzonesbyname');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListHostedZonesByNameResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHostedZonesByName

=head1 ATTRIBUTES


=head2 DNSName => Str

(Optional) For your first request to C<ListHostedZonesByName>, include
the C<dnsname> parameter only if you want to specify the name of the
first hosted zone in the response. If you don't include the C<dnsname>
parameter, Amazon Route 53 returns all of the hosted zones that were
created by the current AWS account, in ASCII order. For subsequent
requests, include both C<dnsname> and C<hostedzoneid> parameters. For
C<dnsname>, specify the value of C<NextDNSName> from the previous
response.



=head2 HostedZoneId => Str

(Optional) For your first request to C<ListHostedZonesByName>, do not
include the C<hostedzoneid> parameter.

If you have more hosted zones than the value of C<maxitems>,
C<ListHostedZonesByName> returns only the first C<maxitems> hosted
zones. To get the next group of C<maxitems> hosted zones, submit
another request to C<ListHostedZonesByName> and include both C<dnsname>
and C<hostedzoneid> parameters. For the value of C<hostedzoneid>,
specify the value of the C<NextHostedZoneId> element from the previous
response.



=head2 MaxItems => Str

The maximum number of hosted zones to be included in the response body
for this request. If you have more than C<maxitems> hosted zones, then
the value of the C<IsTruncated> element in the response is true, and
the values of C<NextDNSName> and C<NextHostedZoneId> specify the first
hosted zone in the next group of C<maxitems> hosted zones.




=cut

