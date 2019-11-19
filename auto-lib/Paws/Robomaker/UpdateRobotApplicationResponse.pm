
package Paws::Robomaker::UpdateRobotApplicationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_Source Robomaker_RobotSoftwareSuite/;
  has Arn => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has RevisionId => (is => 'ro', isa => Str);
  has RobotSoftwareSuite => (is => 'ro', isa => Robomaker_RobotSoftwareSuite);
  has Sources => (is => 'ro', isa => ArrayRef[Robomaker_Source]);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Sources' => {
                              'class' => 'Paws::Robomaker::Source',
                              'type' => 'ArrayRef[Robomaker_Source]'
                            },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'Version' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'RobotSoftwareSuite' => {
                                         'class' => 'Paws::Robomaker::RobotSoftwareSuite',
                                         'type' => 'Robomaker_RobotSoftwareSuite'
                                       },
               'Arn' => {
                          'type' => 'Str'
                        },
               'RevisionId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'RevisionId' => 'revisionId',
                       'Arn' => 'arn',
                       'RobotSoftwareSuite' => 'robotSoftwareSuite',
                       'Name' => 'name',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'Sources' => 'sources',
                       'Version' => 'version'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::UpdateRobotApplicationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the updated robot application.


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


=head2 Version => Str

The version of the robot application.


=head2 _request_id => Str


=cut

