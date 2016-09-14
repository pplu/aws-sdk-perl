
package Paws::Route53::ListGeoLocationsResponse;
  use Moose;
  has GeoLocationDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::Route53::GeoLocationDetails]', traits => ['Unwrapped'], xmlname => 'GeoLocationDetails', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextContinentCode => (is => 'ro', isa => 'Str');
  has NextCountryCode => (is => 'ro', isa => 'Str');
  has NextSubdivisionCode => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53:: - Arguments for method  on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method  on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method .

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to .

As an example:

  $service_obj->(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeoLocationDetailsList => ArrayRef[L<Paws::Route53::GeoLocationDetails>]

A complex type that contains one C<GeoLocationDetails> element for each
location that Amazon Route 53 supports for geolocation.



=head2 B<REQUIRED> IsTruncated => Bool

A value that indicates whether more locations remain to be listed after
the last location in this response. If so, the value of C<IsTruncated>
is C<true>. To get more values, submit another request and include the
values of C<NextContinentCode>, C<NextCountryCode>, and
C<NextSubdivisionCode> in the C<StartContinentCode>,
C<StartCountryCode>, and C<StartSubdivisionCode>, as applicable.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for C<MaxItems> in the request.



=head2 NextContinentCode => Str

If C<IsTruncated> is C<true>, you can make a follow-up request to
display more locations. Enter the value of C<NextContinentCode> in the
C<StartContinentCode> parameter in another C<GET> C<ListGeoLocations>
request.



=head2 NextCountryCode => Str

If C<IsTruncated> is C<true>, you can make a follow-up request to
display more locations. Enter the value of C<NextCountryCode> in the
C<StartCountryCode> parameter in another C<GET> C<ListGeoLocations>
request.



=head2 NextSubdivisionCode => Str

If C<IsTruncated> is C<true>, you can make a follow-up request to
display more locations. Enter the value of C<NextSubdivisionCode> in
the C<StartSubdivisionCode> parameter in another C<GET>
C<ListGeoLocations> request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

