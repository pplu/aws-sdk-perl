
package Paws::Robomaker::DescribeRobotResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw/Robomaker_TagMap/;
  has Architecture => (is => 'ro', isa => Str);
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has FleetArn => (is => 'ro', isa => Str);
  has GreengrassGroupId => (is => 'ro', isa => Str);
  has LastDeploymentJob => (is => 'ro', isa => Str);
  has LastDeploymentTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LastDeploymentTime' => 'lastDeploymentTime',
                       'CreatedAt' => 'createdAt',
                       'LastDeploymentJob' => 'lastDeploymentJob',
                       'Architecture' => 'architecture',
                       'Name' => 'name',
                       'FleetArn' => 'fleetArn',
                       'Arn' => 'arn',
                       'GreengrassGroupId' => 'greengrassGroupId',
                       'Tags' => 'tags',
                       'Status' => 'status'
                     },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GreengrassGroupId' => {
                                        'type' => 'Str'
                                      },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Architecture' => {
                                   'type' => 'Str'
                                 },
               'Name' => {
                           'type' => 'Str'
                         },
               'FleetArn' => {
                               'type' => 'Str'
                             },
               'LastDeploymentJob' => {
                                        'type' => 'Str'
                                      },
               'LastDeploymentTime' => {
                                         'type' => 'Str'
                                       },
               'CreatedAt' => {
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

Paws::Robomaker::DescribeRobotResponse

=head1 ATTRIBUTES


=head2 Architecture => Str

The target architecture of the robot application.

Valid values are: C<"X86_64">, C<"ARM64">, C<"ARMHF">
=head2 Arn => Str

The Amazon Resource Name (ARN) of the robot.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the robot was created.


=head2 FleetArn => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 GreengrassGroupId => Str

The Greengrass group id.


=head2 LastDeploymentJob => Str

The Amazon Resource Name (ARN) of the last deployment job.


=head2 LastDeploymentTime => Str

The time of the last deployment job.


=head2 Name => Str

The name of the robot.


=head2 Status => Str

The status of the fleet.

Valid values are: C<"Available">, C<"Registered">, C<"PendingNewDeployment">, C<"Deploying">, C<"Failed">, C<"InSync">, C<"NoResponse">
=head2 Tags => Robomaker_TagMap

The list of all tags added to the specified robot.


=head2 _request_id => Str


=cut

