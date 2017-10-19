
package Paws::WAFRegional::GetGeoMatchSetResponse;
  use Moose;
  has GeoMatchSet => (is => 'ro', isa => 'Paws::WAFRegional::GeoMatchSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetGeoMatchSetResponse

=head1 ATTRIBUTES


=head2 GeoMatchSet => L<Paws::WAFRegional::GeoMatchSet>

Information about the GeoMatchSet that you specified in the
C<GetGeoMatchSet> request. This includes the C<Type>, which for a
C<GeoMatchContraint> is always C<Country>, as well as the C<Value>,
which is the identifier for a specific country.


=head2 _request_id => Str


=cut

1;