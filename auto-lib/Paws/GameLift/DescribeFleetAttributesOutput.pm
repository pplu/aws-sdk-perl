# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeFleetAttributesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_FleetAttributes/;
  has FleetAttributes => (is => 'ro', isa => ArrayRef[GameLift_FleetAttributes]);
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
               'FleetAttributes' => {
                                      'class' => 'Paws::GameLift::FleetAttributes',
                                      'type' => 'ArrayRef[GameLift_FleetAttributes]'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetAttributesOutput

=head1 ATTRIBUTES


=head2 FleetAttributes => ArrayRef[GameLift_FleetAttributes]

Collection of objects containing attribute metadata for each requested
fleet ID.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;