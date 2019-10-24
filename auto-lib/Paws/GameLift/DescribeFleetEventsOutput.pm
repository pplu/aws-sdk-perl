# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeFleetEventsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::GameLift::Types qw/GameLift_Event/;
  has Events => (is => 'ro', isa => ArrayRef[GameLift_Event]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Events' => {
                             'class' => 'Paws::GameLift::Event',
                             'type' => 'ArrayRef[GameLift_Event]'
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

Paws::GameLift::DescribeFleetEventsOutput

=head1 ATTRIBUTES


=head2 Events => ArrayRef[GameLift_Event]

Collection of objects containing event log entries for the specified
fleet.


=head2 NextToken => Str

Token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 _request_id => Str


=cut

1;