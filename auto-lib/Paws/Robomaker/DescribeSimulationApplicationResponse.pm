
package Paws::Robomaker::DescribeSimulationApplicationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_RobotSoftwareSuite Robomaker_TagMap Robomaker_RenderingEngine Robomaker_SimulationSoftwareSuite Robomaker_Source/;
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
               'Tags' => {
                           'type' => 'Robomaker_TagMap',
                           'class' => 'Paws::Robomaker::TagMap'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SimulationSoftwareSuite' => {
                                              'type' => 'Robomaker_SimulationSoftwareSuite',
                                              'class' => 'Paws::Robomaker::SimulationSoftwareSuite'
                                            },
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'Arn' => {
                          'type' => 'Str'
                        },
               'RobotSoftwareSuite' => {
                                         'class' => 'Paws::Robomaker::RobotSoftwareSuite',
                                         'type' => 'Robomaker_RobotSoftwareSuite'
                                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'Sources' => {
                              'type' => 'ArrayRef[Robomaker_Source]',
                              'class' => 'Paws::Robomaker::Source'
                            },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'RenderingEngine' => {
                                      'type' => 'Robomaker_RenderingEngine',
                                      'class' => 'Paws::Robomaker::RenderingEngine'
                                    },
               'Version' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'RevisionId' => 'revisionId',
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'Arn' => 'arn',
                       'SimulationSoftwareSuite' => 'simulationSoftwareSuite',
                       'Tags' => 'tags',
                       'Version' => 'version',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'Sources' => 'sources',
                       'RenderingEngine' => 'renderingEngine'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeSimulationApplicationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the robot simulation application.


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

The list of all tags added to the specified simulation application.


=head2 Version => Str

The version of the simulation application.


=head2 _request_id => Str


=cut

