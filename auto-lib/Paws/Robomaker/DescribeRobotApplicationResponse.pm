
package Paws::Robomaker::DescribeRobotApplicationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_TagMap Robomaker_RobotSoftwareSuite Robomaker_Source/;
  has Arn => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RevisionId => (is => 'ro', isa => Str);
  has RobotSoftwareSuite => (is => 'ro', isa => Robomaker_RobotSoftwareSuite);
  has Sources => (is => 'ro', isa => ArrayRef[Robomaker_Source]);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'Robomaker_TagMap',
                           'class' => 'Paws::Robomaker::TagMap'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'RobotSoftwareSuite' => {
                                         'type' => 'Robomaker_RobotSoftwareSuite',
                                         'class' => 'Paws::Robomaker::RobotSoftwareSuite'
                                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'RevisionId' => {
                                 'type' => 'Str'
                               },
               'Sources' => {
                              'class' => 'Paws::Robomaker::Source',
                              'type' => 'ArrayRef[Robomaker_Source]'
                            },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'Version' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'RevisionId' => 'revisionId',
                       'Arn' => 'arn',
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'Name' => 'name',
                       'Tags' => 'tags',
                       'Version' => 'version',
                       'Sources' => 'sources',
                       'LastUpdatedAt' => 'lastUpdatedAt'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeRobotApplicationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the robot application.


=head2 LastUpdatedAt => Str

The time, in milliseconds since the epoch, when the robot application
was last updated.


=head2 Name => Str

The name of the robot application.


=head2 RevisionId => Str

The revision id of the robot application.


=head2 RobotSoftwareSuite => Robomaker_RobotSoftwareSuite

The robot software suite used by the robot application.


=head2 Sources => ArrayRef[Robomaker_Source]

The sources of the robot application.


=head2 Tags => Robomaker_TagMap

The list of all tags added to the specified robot application.


=head2 Version => Str

The version of the robot application.


=head2 _request_id => Str


=cut

