
package Paws::Robomaker::CreateRobotApplicationResponse;
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
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'Arn' => 'arn',
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'RevisionId' => 'revisionId',
                       'Sources' => 'sources',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'Version' => 'version'
                     },
  'types' => {
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
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Version' => {
                              'type' => 'Str'
                            },
               'Sources' => {
                              'type' => 'ArrayRef[Robomaker_Source]',
                              'class' => 'Paws::Robomaker::Source'
                            },
               'LastUpdatedAt' => {
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

Paws::Robomaker::CreateRobotApplicationResponse

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

The list of all tags added to the robot application.


=head2 Version => Str

The version of the robot application.


=head2 _request_id => Str


=cut

