# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeFleetUtilizationOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_FleetUtilization/;
  has FleetUtilization => (is => 'ro', isa => ArrayRef[GameLift_FleetUtilization]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FleetUtilization' => {
                                       'class' => 'Paws::GameLift::FleetUtilization',
                                       'type' => 'ArrayRef[GameLift_FleetUtilization]'
                                     },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::GameLift::DescribeFleetUtilizationOutput

=head1 ATTRIBUTES


=head2 FleetUtilization => ArrayRef[GameLift_FleetUtilization]

Collection of objects containing utilization information for each
requested fleet ID.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;