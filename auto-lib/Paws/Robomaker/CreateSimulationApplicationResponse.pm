
package Paws::Robomaker::CreateSimulationApplicationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_SimulationSoftwareSuite Robomaker_Source Robomaker_RobotSoftwareSuite Robomaker_TagMap Robomaker_RenderingEngine/;
  has Arn => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RenderingEngine => (is => 'ro', isa => Robomaker_RenderingEngine);
  has RevisionId => (is => 'ro', isa => Str);
  has RobotSoftwareSuite => (is => 'ro', isa => Robomaker_RobotSoftwareSuite);
  has SimulationSoftwareSuite => (is => 'ro', isa => Robomaker_SimulationSoftwareSuite);
  has Sources => (is => 'ro', isa => ArrayRef[Robomaker_Source]);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RobotSoftwareSuite' => {
                                         'class' => 'Paws::Robomaker::RobotSoftwareSuite',
                                         'type' => 'Robomaker_RobotSoftwareSuite'
                                       },
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'RenderingEngine' => {
                                      'class' => 'Paws::Robomaker::RenderingEngine',
                                      'type' => 'Robomaker_RenderingEngine'
                                    },
               'Sources' => {
                              'class' => 'Paws::Robomaker::Source',
                              'type' => 'ArrayRef[Robomaker_Source]'
                            },
               'Version' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
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
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'RevisionId' => 'revisionId',
                       'RenderingEngine' => 'renderingEngine',
                       'Sources' => 'sources',
                       'Version' => 'version',
                       'Arn' => 'arn',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'SimulationSoftwareSuite' => 'simulationSoftwareSuite'
                     }
}
;
    return $Params_map;
  }

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


=head2 RenderingEngine => Robomaker_RenderingEngine

The rendering engine for the simulation application.


=head2 RevisionId => Str

The revision id of the simulation application.


=head2 RobotSoftwareSuite => Robomaker_RobotSoftwareSuite

Information about the robot software suite.


=head2 SimulationSoftwareSuite => Robomaker_SimulationSoftwareSuite

The simulation software suite used by the simulation application.


=head2 Sources => ArrayRef[Robomaker_Source]

The sources of the simulation application.


=head2 Tags => Robomaker_TagMap

The list of all tags added to the simulation application.


=head2 Version => Str

The version of the simulation application.


=head2 _request_id => Str


=cut

