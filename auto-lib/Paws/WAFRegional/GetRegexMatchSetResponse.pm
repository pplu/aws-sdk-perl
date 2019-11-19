# Generated from json/callresult_class.tt

package Paws::WAFRegional::GetRegexMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_RegexMatchSet/;
  has RegexMatchSet => (is => 'ro', isa => WAFRegional_RegexMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RegexMatchSet' => {
                                    'class' => 'Paws::WAFRegional::RegexMatchSet',
                                    'type' => 'WAFRegional_RegexMatchSet'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::GetRegexMatchSetResponse

=head1 ATTRIBUTES


=head2 RegexMatchSet => WAFRegional_RegexMatchSet

Information about the RegexMatchSet that you specified in the
C<GetRegexMatchSet> request. For more information, see RegexMatchTuple.


=head2 _request_id => Str


=cut

1;