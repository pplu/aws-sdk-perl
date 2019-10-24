# Generated from json/callresult_class.tt

package Paws::WAFRegional::CreateXssMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_XssMatchSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has XssMatchSet => (is => 'ro', isa => WAFRegional_XssMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               'XssMatchSet' => {
                                  'class' => 'Paws::WAFRegional::XssMatchSet',
                                  'type' => 'WAFRegional_XssMatchSet'
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

Paws::WAFRegional::CreateXssMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateXssMatchSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 XssMatchSet => WAFRegional_XssMatchSet

An XssMatchSet.


=head2 _request_id => Str


=cut

1;