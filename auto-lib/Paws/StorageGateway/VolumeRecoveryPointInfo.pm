# Generated from default/object.tt
package Paws::StorageGateway::VolumeRecoveryPointInfo;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::StorageGateway::Types qw//;
  has VolumeARN => (is => 'ro', isa => Str);
  has VolumeRecoveryPointTime => (is => 'ro', isa => Str);
  has VolumeSizeInBytes => (is => 'ro', isa => Int);
  has VolumeUsageInBytes => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VolumeSizeInBytes' => {
                                        'type' => 'Int'
                                      },
               'VolumeUsageInBytes' => {
                                         'type' => 'Int'
                                       },
               'VolumeRecoveryPointTime' => {
                                              'type' => 'Str'
                                            },
               'VolumeARN' => {
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

Paws::StorageGateway::VolumeRecoveryPointInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::VolumeRecoveryPointInfo object:

  $service_obj->Method(Att1 => { VolumeARN => $value, ..., VolumeUsageInBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::VolumeRecoveryPointInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->VolumeARN

=head1 DESCRIPTION

Describes a storage volume recovery point object.

=head1 ATTRIBUTES


=head2 VolumeARN => Str

  The Amazon Resource Name (ARN) of the volume target.


=head2 VolumeRecoveryPointTime => Str

  The time the recovery point was taken.


=head2 VolumeSizeInBytes => Int

  The size of the volume in bytes.


=head2 VolumeUsageInBytes => Int

  The size of the data stored on the volume in bytes.

This value is not available for volumes created prior to May 13, 2015,
until you store data on the volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

