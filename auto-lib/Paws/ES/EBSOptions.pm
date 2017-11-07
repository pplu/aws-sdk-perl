package Paws::ES::EBSOptions;
  use Moose;
  has EBSEnabled => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::EBSOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::EBSOptions object:

  $service_obj->Method(Att1 => { EBSEnabled => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::EBSOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->EBSEnabled

=head1 DESCRIPTION

Options to enable, disable, and specify the properties of EBS storage
volumes. For more information, see Configuring EBS-based Storage
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs).

=head1 ATTRIBUTES


=head2 EBSEnabled => Bool

  Specifies whether EBS-based storage is enabled.


=head2 Iops => Int

  Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).


=head2 VolumeSize => Int

  Integer to specify the size of an EBS volume.


=head2 VolumeType => Str

  Specifies the volume type for EBS-based storage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

