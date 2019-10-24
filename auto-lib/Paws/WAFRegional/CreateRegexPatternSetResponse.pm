# Generated from json/callresult_class.tt

package Paws::WAFRegional::CreateRegexPatternSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_RegexPatternSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has RegexPatternSet => (is => 'ro', isa => WAFRegional_RegexPatternSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegexPatternSet' => {
                                      'class' => 'Paws::WAFRegional::RegexPatternSet',
                                      'type' => 'WAFRegional_RegexPatternSet'
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

Paws::WAFRegional::CreateRegexPatternSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRegexPatternSet>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.


=head2 RegexPatternSet => WAFRegional_RegexPatternSet

A RegexPatternSet that contains no objects.


=head2 _request_id => Str


=cut

1;