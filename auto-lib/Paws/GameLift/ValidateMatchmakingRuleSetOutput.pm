# Generated from json/callresult_class.tt

package Paws::GameLift::ValidateMatchmakingRuleSetOutput;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::GameLift::Types qw//;
  has Valid => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Valid' => {
                            'type' => 'Bool'
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

Paws::GameLift::ValidateMatchmakingRuleSetOutput

=head1 ATTRIBUTES


=head2 Valid => Bool

Response indicating whether the rule set is valid.


=head2 _request_id => Str


=cut

1;