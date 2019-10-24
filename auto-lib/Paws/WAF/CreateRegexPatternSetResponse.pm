# Generated from json/callresult_class.tt

package Paws::WAF::CreateRegexPatternSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_RegexPatternSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has RegexPatternSet => (is => 'ro', isa => WAF_RegexPatternSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegexPatternSet' => {
                                      'class' => 'Paws::WAF::RegexPatternSet',
                                      'type' => 'WAF_RegexPatternSet'
                                    },
               'ChangeToken' => {
                                  'type' => 'Str'
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

Paws::WAF::CreateRegexPatternSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRegexPatternSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 RegexPatternSet => WAF_RegexPatternSet

A RegexPatternSet that contains no objects.


=head2 _request_id => Str


=cut

1;