
package Paws::Robomaker::DescribeFleetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_Robot Robomaker_TagMap/;
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has LastDeploymentJob => (is => 'ro', isa => Str);
  has LastDeploymentStatus => (is => 'ro', isa => Str);
  has LastDeploymentTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Robots => (is => 'ro', isa => ArrayRef[Robomaker_Robot]);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastDeploymentJob' => {
                                        'type' => 'Str'
                                      },
               'LastDeploymentTime' => {
                                         'type' => 'Str'
                                       },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'LastDeploymentStatus' => {
                                           'type' => 'Str'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Robots' => {
                             'type' => 'ArrayRef[Robomaker_Robot]',
                             'class' => 'Paws::Robomaker::Robot'
                           },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Robots' => 'robots',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'Tags' => 'tags',
                       'LastDeploymentStatus' => 'lastDeploymentStatus',
                       'LastDeploymentTime' => 'lastDeploymentTime',
                       'CreatedAt' => 'createdAt',
                       'LastDeploymentJob' => 'lastDeploymentJob'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeFleetResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the fleet.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the fleet was created.


=head2 LastDeploymentJob => Str

The Amazon Resource Name (ARN) of the last deployment job.


=head2 LastDeploymentStatus => Str

The status of the last deployment.

Valid values are: C<"Pending">, C<"Preparing">, C<"InProgress">, C<"Failed">, C<"Succeeded">, C<"Canceled">
=head2 LastDeploymentTime => Str

The time of the last deployment.


=head2 Name => Str

The name of the fleet.


=head2 Robots => ArrayRef[Robomaker_Robot]

A list of robots.


=head2 Tags => Robomaker_TagMap

The list of all tags added to the specified fleet.


=head2 _request_id => Str


=cut

