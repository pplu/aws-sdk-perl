# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeScriptOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_Script/;
  has Script => (is => 'ro', isa => GameLift_Script);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Script' => {
                             'type' => 'GameLift_Script',
                             'class' => 'Paws::GameLift::Script'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeScriptOutput

=head1 ATTRIBUTES


=head2 Script => GameLift_Script

Set of properties describing the requested script.


=head2 _request_id => Str


=cut

1;