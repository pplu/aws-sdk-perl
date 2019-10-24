
package Paws::EC2::VolumeAttachment;
  use Moo;

  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw//;
  has AttachTime => (is => 'ro', isa => Str);
  has DeleteOnTermination => (is => 'ro', isa => Bool);
  has Device => (is => 'ro', isa => Str);
  has InstanceId => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has VolumeId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Device' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeleteOnTermination' => {
                                          'type' => 'Bool'
                                        },
               'AttachTime' => {
                                 'type' => 'Str'
                               },
               'VolumeId' => {
                               'type' => 'Str'
                             },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'InstanceId' => 'instanceId',
                       'Device' => 'device',
                       'DeleteOnTermination' => 'deleteOnTermination',
                       'AttachTime' => 'attachTime',
                       'VolumeId' => 'volumeId',
                       'State' => 'status'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VolumeAttachment

=head1 ATTRIBUTES


=head2 AttachTime => Str

The time stamp when the attachment initiated.


=head2 DeleteOnTermination => Bool

Indicates whether the EBS volume is deleted on instance termination.


=head2 Device => Str

The device name.


=head2 InstanceId => Str

The ID of the instance.


=head2 State => Str

The attachment state of the volume.

Valid values are: C<"attaching">, C<"attached">, C<"detaching">, C<"detached">, C<"busy">
=head2 VolumeId => Str

The ID of the volume.


=head2 _request_id => Str


=cut

