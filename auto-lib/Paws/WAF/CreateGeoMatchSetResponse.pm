
package Paws::WAF::CreateGeoMatchSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');
  has GeoMatchSet => (is => 'ro', isa => 'Paws::WAF::GeoMatchSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateGeoMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateGeoMatchSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 GeoMatchSet => L<Paws::WAF::GeoMatchSet>

The GeoMatchSet returned in the C<CreateGeoMatchSet> response. The
C<GeoMatchSet> contains no C<GeoMatchConstraints>.


=head2 _request_id => Str


=cut

1;