# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::PutRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw//;
  has RuleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RuleArn' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutRuleResponse

=head1 ATTRIBUTES


=head2 RuleArn => Str

The Amazon Resource Name (ARN) of the rule.


=head2 _request_id => Str


=cut

1;