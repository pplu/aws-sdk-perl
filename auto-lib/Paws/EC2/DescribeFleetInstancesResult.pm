
package Paws::EC2::DescribeFleetInstancesResult;
  use Moose;
  has ActiveInstances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ActiveInstance]', request_name => 'activeInstanceSet', traits => ['NameInRequest',]);
  has FleetId => (is => 'ro', isa => 'Str', request_name => 'fleetId', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFleetInstancesResult

=head1 ATTRIBUTES


=head2 ActiveInstances => ArrayRef[L<Paws::EC2::ActiveInstance>]

The running instances. This list is refreshed periodically and might be
out of date.


=head2 FleetId => Str

The ID of the EC2 Fleet.


=head2 NextToken => Str

The token for the next set of results.


=head2 _request_id => Str


=cut

