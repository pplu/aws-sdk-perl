# Generated from json/callresult_class.tt

package Paws::WAFRegional::CreateGeoMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_GeoMatchSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has GeoMatchSet => (is => 'ro', isa => WAFRegional_GeoMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               'GeoMatchSet' => {
                                  'class' => 'Paws::WAFRegional::GeoMatchSet',
                                  'type' => 'WAFRegional_GeoMatchSet'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateGeoMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateGeoMatchSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 GeoMatchSet => WAFRegional_GeoMatchSet

The GeoMatchSet returned in the C<CreateGeoMatchSet> response. The
C<GeoMatchSet> contains no C<GeoMatchConstraints>.


=head2 _request_id => Str


=cut

1;