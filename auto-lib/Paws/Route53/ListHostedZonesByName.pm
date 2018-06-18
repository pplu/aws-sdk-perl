
package Paws::Route53::ListHostedZonesByName;
  use Moose;
  has DNSName => (is => 'ro', isa => 'Str', query_name => 'dnsname', traits => ['ParamInQuery']);
  has HostedZoneId => (is => 'ro', isa => 'Str', query_name => 'hostedzoneid', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHostedZonesByName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzonesbyname');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListHostedZonesByNameResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHostedZonesByName - Arguments for method ListHostedZonesByName on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHostedZonesByName on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListHostedZonesByName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHostedZonesByName.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListHostedZonesByNameResponse = $route53->ListHostedZonesByName(
      DNSName      => 'MyDNSName',         # OPTIONAL
      HostedZoneId => 'MyResourceId',      # OPTIONAL
      MaxItems     => 'MyPageMaxItems',    # OPTIONAL
    );

    # Results:
    my $DNSName          = $ListHostedZonesByNameResponse->DNSName;
    my $HostedZoneId     = $ListHostedZonesByNameResponse->HostedZoneId;
    my $HostedZones      = $ListHostedZonesByNameResponse->HostedZones;
    my $IsTruncated      = $ListHostedZonesByNameResponse->IsTruncated;
    my $MaxItems         = $ListHostedZonesByNameResponse->MaxItems;
    my $NextDNSName      = $ListHostedZonesByNameResponse->NextDNSName;
    my $NextHostedZoneId = $ListHostedZonesByNameResponse->NextHostedZoneId;

    # Returns a L<Paws::Route53::ListHostedZonesByNameResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListHostedZonesByName>

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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHostedZonesByName in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

