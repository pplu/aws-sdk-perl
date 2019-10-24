# Generated from json/callresult_class.tt

package Paws::WAFRegional::CreateSqlInjectionMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAFRegional::Types qw/WAFRegional_SqlInjectionMatchSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has SqlInjectionMatchSet => (is => 'ro', isa => WAFRegional_SqlInjectionMatchSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeToken' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SqlInjectionMatchSet' => {
                                           'class' => 'Paws::WAFRegional::SqlInjectionMatchSet',
                                           'type' => 'WAFRegional_SqlInjectionMatchSet'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::CreateSqlInjectionMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the
C<CreateSqlInjectionMatchSet> request. You can also use this value to
query the status of the request. For more information, see
GetChangeTokenStatus.


=head2 SqlInjectionMatchSet => WAFRegional_SqlInjectionMatchSet

A SqlInjectionMatchSet.


=head2 _request_id => Str


=cut

1;