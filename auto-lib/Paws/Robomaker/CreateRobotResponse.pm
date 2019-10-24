
package Paws::Robomaker::CreateRobotResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw/Robomaker_TagMap/;
  has Architecture => (is => 'ro', isa => Str);
  has Arn => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has GreengrassGroupId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'GreengrassGroupId' => {
                                        'type' => 'Str'
                                      },
               'Name' => {
                           'type' => 'Str'
                         },
               'Architecture' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'CreatedAt' => 'createdAt',
                       'Arn' => 'arn',
                       'Tags' => 'tags',
                       'GreengrassGroupId' => 'greengrassGroupId',
                       'Name' => 'name',
                       'Architecture' => 'architecture'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateRobotResponse

=head1 ATTRIBUTES


=head2 Architecture => Str

The target architecture of the robot.

Valid values are: C<"X86_64">, C<"ARM64">, C<"ARMHF">
=head2 Arn => Str

The Amazon Resource Name (ARN) of the robot.


=head2 CreatedAt => Str

The time, in milliseconds since the epoch, when the robot was created.


=head2 GreengrassGroupId => Str

The Amazon Resource Name (ARN) of the Greengrass group associated with
the robot.


=head2 Name => Str

The name of the robot.


=head2 Tags => Robomaker_TagMap

The list of all tags added to the robot.


=head2 _request_id => Str


=cut

