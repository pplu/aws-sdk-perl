
package Paws::Greengrass::GetDeviceDefinitionVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_DeviceDefinitionVersion/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTimestamp => (is => 'ro', isa => Str);
  has Definition => (is => 'ro', isa => Greengrass_DeviceDefinitionVersion);
  has Id => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'Version' => {
                              'type' => 'Str'
                            },
               'Definition' => {
                                 'class' => 'Paws::Greengrass::DeviceDefinitionVersion',
                                 'type' => 'Greengrass_DeviceDefinitionVersion'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
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

Paws::Greengrass::GetDeviceDefinitionVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the device definition version.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the device definition
version was created.


=head2 Definition => Greengrass_DeviceDefinitionVersion

Information about the device definition version.


=head2 Id => Str

The ID of the device definition version.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 Version => Str

The version of the device definition version.


=head2 _request_id => Str


=cut

