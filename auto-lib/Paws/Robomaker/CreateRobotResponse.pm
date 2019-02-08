
package Paws::Robomaker::CreateRobotResponse;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'architecture');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has GreengrassGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'greengrassGroupId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateRobotResponse

=head1 ATTRIBUTES


=head2 Architecture => Str

The target architecture of the robot.

Valid values are: C<"X86_64">, C<"ARM64">, C<"ARMHF">
=head2 Arn => Str

The Amazon Resource Name (ARN) of the robot.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the robot was created.


=head2 GreengrassGroupId => Str

The Amazon Resource Name (ARN) of the Greengrass group associated with
the robot.


=head2 Name => Str

The name of the robot.


=head2 Tags => L<Paws::Robomaker::TagMap>

The list of all tags added to the robot.


=head2 _request_id => Str


=cut

