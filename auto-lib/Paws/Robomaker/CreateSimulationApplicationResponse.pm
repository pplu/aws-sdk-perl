
package Paws::Robomaker::CreateSimulationApplicationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RenderingEngine => (is => 'ro', isa => 'Paws::Robomaker::RenderingEngine', traits => ['NameInRequest'], request_name => 'renderingEngine');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId');
  has RobotSoftwareSuite => (is => 'ro', isa => 'Paws::Robomaker::RobotSoftwareSuite', traits => ['NameInRequest'], request_name => 'robotSoftwareSuite');
  has SimulationSoftwareSuite => (is => 'ro', isa => 'Paws::Robomaker::SimulationSoftwareSuite', traits => ['NameInRequest'], request_name => 'simulationSoftwareSuite');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::Source]', traits => ['NameInRequest'], request_name => 'sources');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateSimulationApplicationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the simulation application.


=head2 LastUpdatedAt => Str

The time, in milliseconds since the epoch, when the simulation
application was last updated.


=head2 Name => Str

The name of the simulation application.


=head2 RenderingEngine => L<Paws::Robomaker::RenderingEngine>

The rendering engine for the simulation application.


=head2 RevisionId => Str

The revision id of the simulation application.


=head2 RobotSoftwareSuite => L<Paws::Robomaker::RobotSoftwareSuite>

Information about the robot software suite.


=head2 SimulationSoftwareSuite => L<Paws::Robomaker::SimulationSoftwareSuite>

The simulation software suite used by the simulation application.


=head2 Sources => ArrayRef[L<Paws::Robomaker::Source>]

The sources of the simulation application.


=head2 Tags => L<Paws::Robomaker::TagMap>

The list of all tags added to the simulation application.


=head2 Version => Str

The version of the simulation application.


=head2 _request_id => Str


=cut

