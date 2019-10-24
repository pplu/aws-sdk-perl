# Generated from json/callresult_class.tt

package Paws::WAF::GetRegexMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_RegexMatchSet/;
  has RegexMatchSet => (is => 'ro', isa => WAF_RegexMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RegexMatchSet' => {
                                    'class' => 'Paws::WAF::RegexMatchSet',
                                    'type' => 'WAF_RegexMatchSet'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRegexMatchSetResponse

=head1 ATTRIBUTES


=head2 RegexMatchSet => WAF_RegexMatchSet

Information about the RegexMatchSet that you specified in the
C<GetRegexMatchSet> request. For more information, see RegexMatchTuple.


=head2 _request_id => Str


=cut

1;