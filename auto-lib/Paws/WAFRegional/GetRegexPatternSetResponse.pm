# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetRegexPatternSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_RegexPatternSet/;
  has RegexPatternSet => (is => 'ro', isa => WAFRegional_RegexPatternSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegexPatternSet' => {
                                      'class' => 'Paws::WAFRegional::RegexPatternSet',
                                      'type' => 'WAFRegional_RegexPatternSet'
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

Paws::WAFRegional::GetRegexPatternSetResponse

=head1 ATTRIBUTES


=head2 RegexPatternSet => WAFRegional_RegexPatternSet

Information about the RegexPatternSet that you specified in the
C<GetRegexPatternSet> request, including the identifier of the pattern
set and the regular expression patterns you want AWS WAF to search for.


=head2 _request_id => Str


=cut

1;