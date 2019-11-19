
package Paws::Robomaker::CreateSimulationApplicationVersionResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_RobotSoftwareSuite Robomaker_Source Robomaker_RenderingEngine Robomaker_SimulationSoftwareSuite/;
  has Arn => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RenderingEngine => (is => 'ro', isa => Robomaker_RenderingEngine);
  has RevisionId => (is => 'ro', isa => Str);
  has RobotSoftwareSuite => (is => 'ro', isa => Robomaker_RobotSoftwareSuite);
  has SimulationSoftwareSuite => (is => 'ro', isa => Robomaker_SimulationSoftwareSuite);
  has Sources => (is => 'ro', isa => ArrayRef[Robomaker_Source]);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SimulationSoftwareSuite' => 'simulationSoftwareSuite',
                       'Name' => 'name',
                       'RevisionId' => 'revisionId',
                       'Arn' => 'arn',
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'RenderingEngine' => 'renderingEngine',
                       'Sources' => 'sources',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'Version' => 'version'
                     },
  'types' => {
               'Version' => {
                              'type' => 'Str'
                            },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'Sources' => {
                              'class' => 'Paws::Robomaker::Source',
                              'type' => 'ArrayRef[Robomaker_Source]'
                            },
               'RenderingEngine' => {
                                      'type' => 'Robomaker_RenderingEngine',
                                      'class' => 'Paws::Robomaker::RenderingEngine'
                                    },
               'Name' => {
                           'type' => 'Str'
                         },
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'Arn' => {
                          'type' => 'Str'
                        },
               'RobotSoftwareSuite' => {
                                         'type' => 'Robomaker_RobotSoftwareSuite',
                                         'class' => 'Paws::Robomaker::RobotSoftwareSuite'
                                       },
               'SimulationSoftwareSuite' => {
                                              'class' => 'Paws::Robomaker::SimulationSoftwareSuite',
                                              'type' => 'Robomaker_SimulationSoftwareSuite'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateSimulationApplicationVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the simulation application.


=head2 LastUpdatedAt => Str

The time, in milliseconds since the epoch, when the simulation
application was last updated.


=head2 Name => Str

The name of the simulation application.


=head2 RenderingEngine => Robomaker_RenderingEngine

The rendering engine for the simulation application.


=head2 RevisionId => Str

The revision ID of the simulation application.


=head2 RobotSoftwareSuite => Robomaker_RobotSoftwareSuite

Information about the robot software suite.


=head2 SimulationSoftwareSuite => Robomaker_SimulationSoftwareSuite

The simulation software suite used by the simulation application.


=head2 Sources => ArrayRef[Robomaker_Source]

The sources of the simulation application.


=head2 Version => Str

The version of the simulation application.


=head2 _request_id => Str


=cut

