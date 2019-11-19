# Generated from json/callresult_class.tt

package Paws::GameLift::GetInstanceAccessOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_InstanceAccess/;
  has InstanceAccess => (is => 'ro', isa => GameLift_InstanceAccess);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceAccess' => {
                                     'class' => 'Paws::GameLift::InstanceAccess',
                                     'type' => 'GameLift_InstanceAccess'
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

Paws::GameLift::GetInstanceAccessOutput

=head1 ATTRIBUTES


=head2 InstanceAccess => GameLift_InstanceAccess

Object that contains connection information for a fleet instance,
including IP address and access credentials.


=head2 _request_id => Str


=cut

1;