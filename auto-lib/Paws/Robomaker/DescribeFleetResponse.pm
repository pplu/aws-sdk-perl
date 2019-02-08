
package Paws::Robomaker::DescribeFleetResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has LastDeploymentJob => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastDeploymentJob');
  has LastDeploymentStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastDeploymentStatus');
  has LastDeploymentTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastDeploymentTime');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Robots => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::Robot]', traits => ['NameInRequest'], request_name => 'robots');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeFleetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the fleet was created.


=head2 LastDeploymentJob => Str

The Amazon Resource Name (ARN) of the last deployment job.


=head2 LastDeploymentStatus => Str

The status of the last deployment.

Valid values are: C<"Pending">, C<"Preparing">, C<"InProgress">, C<"Failed">, C<"Succeeded">
=head2 LastDeploymentTime => Str

The time of the last deployment.


=head2 Name => Str

The name of the fleet.


=head2 Robots => ArrayRef[L<Paws::Robomaker::Robot>]

A list of robots.


=head2 Tags => L<Paws::Robomaker::TagMap>

The list of all tags added to the specified fleet.


=head2 _request_id => Str


=cut

