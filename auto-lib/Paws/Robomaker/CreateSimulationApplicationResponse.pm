
package Paws::Robomaker::CreateSimulationApplicationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_RenderingEngine Robomaker_SimulationSoftwareSuite Robomaker_Source Robomaker_RobotSoftwareSuite Robomaker_TagMap/;
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
               'SimulationSoftwareSuite' => {
                                              'type' => 'Robomaker_SimulationSoftwareSuite',
                                              'class' => 'Paws::Robomaker::SimulationSoftwareSuite'
                                            },
               'Tags' => {
                           'type' => 'Robomaker_TagMap',
                           'class' => 'Paws::Robomaker::TagMap'
                         },
               '_request_id' => {
                                  'type' => 'Str'
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
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'Sources' => {
                              'type' => 'ArrayRef[Robomaker_Source]',
                              'class' => 'Paws::Robomaker::Source'
                            },
               'RenderingEngine' => {
                                      'class' => 'Paws::Robomaker::RenderingEngine',
                                      'type' => 'Robomaker_RenderingEngine'
                                    },
               'Version' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'SimulationSoftwareSuite' => 'simulationSoftwareSuite',
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'Arn' => 'arn',
                       'RevisionId' => 'revisionId',
                       'Name' => 'name',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'Sources' => 'sources',
                       'RenderingEngine' => 'renderingEngine',
                       'Version' => 'version'
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

