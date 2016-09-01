
package Paws::Route53::ListHostedZones;
  use Moose;
  has DelegationSetId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'delegationsetid' );
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker' );
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxitems' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHostedZones');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListHostedZonesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHostedZonesResponse

=head1 ATTRIBUTES


=head2 DelegationSetId => Str





=head2 Marker => Str

(Optional) If you have more hosted zones than the value of C<maxitems>,
C<ListHostedZones> returns only the first C<maxitems> hosted zones. To
get the next group of C<maxitems> hosted zones, submit another request
to C<ListHostedZones>. For the value of marker, specify the value of
the C<NextMarker> element that was returned in the previous response.

Hosted zones are listed in the order in which they were created.



=head2 MaxItems => Str

(Optional) The maximum number of hosted zones to be included in the
response body for this request. If you have more than C<maxitems>
hosted zones, the value of the C<IsTruncated> element in the response
is C<true>, and the value of the C<NextMarker> element is the hosted
zone ID of the first hosted zone in the next group of C<maxitems>
hosted zones.




=cut

