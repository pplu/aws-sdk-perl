package Paws::StorageGateway::VolumeRecoveryPointInfo;
  use Moose;
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeRecoveryPointTime => (is => 'ro', isa => 'Str');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Int');
  has VolumeUsageInBytes => (is => 'ro', isa => 'Int');
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

This class has no description

=head1 ATTRIBUTES


=head2 VolumeARN => Str

  


=head2 VolumeRecoveryPointTime => Str

  


=head2 VolumeSizeInBytes => Int

  


=head2 VolumeUsageInBytes => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

