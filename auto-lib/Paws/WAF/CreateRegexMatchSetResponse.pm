# Generated from json/callresult_class.tt

package Paws::WAF::CreateRegexMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_RegexMatchSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has RegexMatchSet => (is => 'ro', isa => WAF_RegexMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RegexMatchSet' => {
                                    'type' => 'WAF_RegexMatchSet',
                                    'class' => 'Paws::WAF::RegexMatchSet'
                                  },
               'ChangeToken' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateRegexMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRegexMatchSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 RegexMatchSet => WAF_RegexMatchSet

A RegexMatchSet that contains no C<RegexMatchTuple> objects.


=head2 _request_id => Str


=cut

1;