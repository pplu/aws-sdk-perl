# Generated from json/callresult_class.tt

package Paws::WAF::CreateGeoMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_GeoMatchSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has GeoMatchSet => (is => 'ro', isa => WAF_GeoMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               'GeoMatchSet' => {
                                  'class' => 'Paws::WAF::GeoMatchSet',
                                  'type' => 'WAF_GeoMatchSet'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateGeoMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateGeoMatchSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 GeoMatchSet => WAF_GeoMatchSet

The GeoMatchSet returned in the C<CreateGeoMatchSet> response. The
C<GeoMatchSet> contains no C<GeoMatchConstraints>.


=head2 _request_id => Str


=cut

1;