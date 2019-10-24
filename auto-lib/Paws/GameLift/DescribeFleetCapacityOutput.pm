# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeFleetCapacityOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_FleetCapacity/;
  has FleetCapacity => (is => 'ro', isa => ArrayRef[GameLift_FleetCapacity]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FleetCapacity' => {
                                    'class' => 'Paws::GameLift::FleetCapacity',
                                    'type' => 'ArrayRef[GameLift_FleetCapacity]'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetCapacityOutput

=head1 ATTRIBUTES


=head2 FleetCapacity => ArrayRef[GameLift_FleetCapacity]

Collection of objects containing capacity information for each
requested fleet ID. Leave this parameter empty to retrieve capacity
information for all fleets.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;