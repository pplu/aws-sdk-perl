
package Paws::Robomaker::UpdateSimulationApplication;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'application', required => 1);
  has CurrentRevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentRevisionId');
  has RenderingEngine => (is => 'ro', isa => 'Paws::Robomaker::RenderingEngine', traits => ['NameInRequest'], request_name => 'renderingEngine', required => 1);
  has RobotSoftwareSuite => (is => 'ro', isa => 'Paws::Robomaker::RobotSoftwareSuite', traits => ['NameInRequest'], request_name => 'robotSoftwareSuite', required => 1);
  has SimulationSoftwareSuite => (is => 'ro', isa => 'Paws::Robomaker::SimulationSoftwareSuite', traits => ['NameInRequest'], request_name => 'simulationSoftwareSuite', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SourceConfig]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSimulationApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateSimulationApplication');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::UpdateSimulationApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::UpdateSimulationApplication - Arguments for method UpdateSimulationApplication on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSimulationApplication on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method UpdateSimulationApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSimulationApplication.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $UpdateSimulationApplicationResponse =
      $robomaker->UpdateSimulationApplication(
      Application     => 'MyArn',
      RenderingEngine => {
        Name    => 'OGRE',                            # values: OGRE; OPTIONAL
        Version => 'MyRenderingEngineVersionType',    # OPTIONAL
      },
      RobotSoftwareSuite => {
        Name    => 'ROS',        # values: ROS; OPTIONAL
        Version => 'Kinetic',    # values: Kinetic; OPTIONAL
      },
      SimulationSoftwareSuite => {
        Name => 'Gazebo',        # values: Gazebo; OPTIONAL
        Version => 'MySimulationSoftwareSuiteVersionType',    # OPTIONAL
      },
      Sources => [
        {
          Architecture => 'X86_64',     # values: X86_64, ARM64, ARMHF; OPTIONAL
          S3Bucket     => 'MyS3Bucket', # min: 3, max: 63; OPTIONAL
          S3Key        => 'MyS3Key',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],
      CurrentRevisionId => 'MyRevisionId',    # OPTIONAL
      );

    # Results:
    my $Arn             = $UpdateSimulationApplicationResponse->Arn;
    my $LastUpdatedAt   = $UpdateSimulationApplicationResponse->LastUpdatedAt;
    my $Name            = $UpdateSimulationApplicationResponse->Name;
    my $RenderingEngine = $UpdateSimulationApplicationResponse->RenderingEngine;
    my $RevisionId      = $UpdateSimulationApplicationResponse->RevisionId;
    my $RobotSoftwareSuite =
      $UpdateSimulationApplicationResponse->RobotSoftwareSuite;
    my $SimulationSoftwareSuite =
      $UpdateSimulationApplicationResponse->SimulationSoftwareSuite;
    my $Sources = $UpdateSimulationApplicationResponse->Sources;
    my $Version = $UpdateSimulationApplicationResponse->Version;

    # Returns a L<Paws::Robomaker::UpdateSimulationApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/UpdateSimulationApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The application information for the simulation application.



=head2 CurrentRevisionId => Str

The revision id for the robot application.



=head2 B<REQUIRED> RenderingEngine => L<Paws::Robomaker::RenderingEngine>

The rendering engine for the simulation application.



=head2 B<REQUIRED> RobotSoftwareSuite => L<Paws::Robomaker::RobotSoftwareSuite>

Information about the robot software suite.



=head2 B<REQUIRED> SimulationSoftwareSuite => L<Paws::Robomaker::SimulationSoftwareSuite>

The simulation software suite used by the simulation application.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::Robomaker::SourceConfig>]

The sources of the simulation application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSimulationApplication in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

