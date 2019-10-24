# Generated from json/callresult_class.tt

package Paws::WAF::CreateRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_Rule/;
  has ChangeToken => (is => 'ro', isa => Str);
  has Rule => (is => 'ro', isa => WAF_Rule);

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
               'Rule' => {
                           'class' => 'Paws::WAF::Rule',
                           'type' => 'WAF_Rule'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateRuleResponse

=head1 ATTRIBUTES


=head2 ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRule> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.


=head2 Rule => WAF_Rule

The Rule returned in the C<CreateRule> response.


=head2 _request_id => Str


=cut

1;