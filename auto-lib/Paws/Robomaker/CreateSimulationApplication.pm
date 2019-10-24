
package Paws::Robomaker::CreateSimulationApplication;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_SimulationSoftwareSuite Robomaker_SourceConfig Robomaker_RobotSoftwareSuite Robomaker_TagMap Robomaker_RenderingEngine/;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RenderingEngine => (is => 'ro', isa => Robomaker_RenderingEngine, required => 1, predicate => 1);
  has RobotSoftwareSuite => (is => 'ro', isa => Robomaker_RobotSoftwareSuite, required => 1, predicate => 1);
  has SimulationSoftwareSuite => (is => 'ro', isa => Robomaker_SimulationSoftwareSuite, required => 1, predicate => 1);
  has Sources => (is => 'ro', isa => ArrayRef[Robomaker_SourceConfig], required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => Robomaker_TagMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSimulationApplication');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/createSimulationApplication');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Robomaker::CreateSimulationApplicationResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Sources' => {
                              'class' => 'Paws::Robomaker::SourceConfig',
                              'type' => 'ArrayRef[Robomaker_SourceConfig]'
                            },
               'RobotSoftwareSuite' => {
                                         'class' => 'Paws::Robomaker::RobotSoftwareSuite',
                                         'type' => 'Robomaker_RobotSoftwareSuite'
                                       },
               'RenderingEngine' => {
                                      'class' => 'Paws::Robomaker::RenderingEngine',
                                      'type' => 'Robomaker_RenderingEngine'
                                    },
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'SimulationSoftwareSuite' => {
                                              'class' => 'Paws::Robomaker::SimulationSoftwareSuite',
                                              'type' => 'Robomaker_SimulationSoftwareSuite'
                                            }
             },
  'NameInRequest' => {
                       'Sources' => 'sources',
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'RenderingEngine' => 'renderingEngine',
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'SimulationSoftwareSuite' => 'simulationSoftwareSuite'
                     },
  'IsRequired' => {
                    'Sources' => 1,
                    'RobotSoftwareSuite' => 1,
                    'RenderingEngine' => 1,
                    'Name' => 1,
                    'SimulationSoftwareSuite' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateSimulationApplication - Arguments for method CreateSimulationApplication on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSimulationApplication on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateSimulationApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSimulationApplication.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateSimulationApplicationResponse =
      $robomaker->CreateSimulationApplication(
      Name            => 'MyName',
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
      Tags => {
        'MyTagKey' => 'MyTagValue',     # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn             = $CreateSimulationApplicationResponse->Arn;
    my $LastUpdatedAt   = $CreateSimulationApplicationResponse->LastUpdatedAt;
    my $Name            = $CreateSimulationApplicationResponse->Name;
    my $RenderingEngine = $CreateSimulationApplicationResponse->RenderingEngine;
    my $RevisionId      = $CreateSimulationApplicationResponse->RevisionId;
    my $RobotSoftwareSuite =
      $CreateSimulationApplicationResponse->RobotSoftwareSuite;
    my $SimulationSoftwareSuite =
      $CreateSimulationApplicationResponse->SimulationSoftwareSuite;
    my $Sources = $CreateSimulationApplicationResponse->Sources;
    my $Tags    = $CreateSimulationApplicationResponse->Tags;
    my $Version = $CreateSimulationApplicationResponse->Version;

    # Returns a L<Paws::Robomaker::CreateSimulationApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateSimulationApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the simulation application.



=head2 B<REQUIRED> RenderingEngine => Robomaker_RenderingEngine

The rendering engine for the simulation application.



=head2 B<REQUIRED> RobotSoftwareSuite => Robomaker_RobotSoftwareSuite

The robot software suite of the simulation application.



=head2 B<REQUIRED> SimulationSoftwareSuite => Robomaker_SimulationSoftwareSuite

The simulation software suite used by the simulation application.



=head2 B<REQUIRED> Sources => ArrayRef[Robomaker_SourceConfig]

The sources of the simulation application.



=head2 Tags => Robomaker_TagMap

A map that contains tag keys and tag values that are attached to the
simulation application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSimulationApplication in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

