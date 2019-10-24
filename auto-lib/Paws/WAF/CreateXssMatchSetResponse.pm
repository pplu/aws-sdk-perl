# Generated from json/callresult_class.tt

package Paws::WAF::CreateXssMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_XssMatchSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has XssMatchSet => (is => 'ro', isa => WAF_XssMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               'XssMatchSet' => {
                                  'class' => 'Paws::WAF::XssMatchSet',
                                  'type' => 'WAF_XssMatchSet'
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

Paws::WAF::CreateXssMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateXssMatchSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 XssMatchSet => WAF_XssMatchSet

An XssMatchSet.


=head2 _request_id => Str


=cut

1;