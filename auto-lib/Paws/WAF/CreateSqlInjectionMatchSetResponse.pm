# Generated from json/callresult_class.tt

package Paws::WAF::CreateSqlInjectionMatchSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_SqlInjectionMatchSet/;
  has ChangeToken => (is => 'ro', isa => Str);
  has SqlInjectionMatchSet => (is => 'ro', isa => WAF_SqlInjectionMatchSet);

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
                                           'class' => 'Paws::WAF::SqlInjectionMatchSet',
                                           'type' => 'WAF_SqlInjectionMatchSet'
                                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateSqlInjectionMatchSetResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the
C<CreateSqlInjectionMatchSet> request. You can also use this value to
query the status of the request. For more information, see
GetChangeTokenStatus.


=head2 SqlInjectionMatchSet => WAF_SqlInjectionMatchSet

A SqlInjectionMatchSet.


=head2 _request_id => Str


=cut

1;