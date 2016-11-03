
package Paws::Route53::ListHostedZones;
  use Moose;
  has DelegationSetId => (is => 'ro', isa => 'Str', query_name => 'delegationsetid', traits => ['ParamInQuery']);
  has Marker => (is => 'ro', isa => 'Str', query_name => 'marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHostedZones');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListHostedZonesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHostedZones - Arguments for method ListHostedZones on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHostedZones on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method ListHostedZones.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHostedZones.

As an example:

  $service_obj->ListHostedZones(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DelegationSetId => Str

If you're using reusable delegation sets and you want to list all of
the hosted zones that are associated with a reusable delegation set,
specify the ID of that reusable delegation set.



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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHostedZones in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

