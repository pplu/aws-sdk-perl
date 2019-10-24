
package Paws::Route53::ListGeoLocationsResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::Route53::Types qw/Route53_GeoLocationDetails/;
  has GeoLocationDetailsList => (is => 'ro', isa => ArrayRef[Route53_GeoLocationDetails], required => 1);
  has IsTruncated => (is => 'ro', isa => Bool, required => 1);
  has MaxItems => (is => 'ro', isa => Str, required => 1);
  has NextContinentCode => (is => 'ro', isa => Str);
  has NextCountryCode => (is => 'ro', isa => Str);
  has NextSubdivisionCode => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextContinentCode' => {
                                        'type' => 'Str'
                                      },
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'NextSubdivisionCode' => {
                                          'type' => 'Str'
                                        },
               'MaxItems' => {
                               'type' => 'Str'
                             },
               'GeoLocationDetailsList' => {
                                             'class' => 'Paws::Route53::GeoLocationDetails',
                                             'type' => 'ArrayRef[Route53_GeoLocationDetails]'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextCountryCode' => {
                                      'type' => 'Str'
                                    }
             },
  'IsRequired' => {
                    'IsTruncated' => 1,
                    'MaxItems' => 1,
                    'GeoLocationDetailsList' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListGeoLocationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeoLocationDetailsList => ArrayRef[Route53_GeoLocationDetails]

A complex type that contains one C<GeoLocationDetails> element for each
location that Amazon Route 53 supports for geolocation.



=head2 B<REQUIRED> IsTruncated => Bool

A value that indicates whether more locations remain to be listed after
the last location in this response. If so, the value of C<IsTruncated>
is C<true>. To get more values, submit another request and include the
values of C<NextContinentCode>, C<NextCountryCode>, and
C<NextSubdivisionCode> in the C<startcontinentcode>,
C<startcountrycode>, and C<startsubdivisioncode>, as applicable.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for C<MaxItems> in the request.



=head2 NextContinentCode => Str

If C<IsTruncated> is C<true>, you can make a follow-up request to
display more locations. Enter the value of C<NextContinentCode> in the
C<startcontinentcode> parameter in another C<ListGeoLocations> request.



=head2 NextCountryCode => Str

If C<IsTruncated> is C<true>, you can make a follow-up request to
display more locations. Enter the value of C<NextCountryCode> in the
C<startcountrycode> parameter in another C<ListGeoLocations> request.



=head2 NextSubdivisionCode => Str

If C<IsTruncated> is C<true>, you can make a follow-up request to
display more locations. Enter the value of C<NextSubdivisionCode> in
the C<startsubdivisioncode> parameter in another C<ListGeoLocations>
request.




=cut

