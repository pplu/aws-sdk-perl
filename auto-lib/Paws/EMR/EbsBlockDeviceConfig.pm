package Paws::EMR::EbsBlockDeviceConfig;
  use Moose;
  has VolumeSpecification => (is => 'ro', isa => 'Paws::EMR::VolumeSpecification', required => 1);
  has VolumesPerInstance => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::EbsBlockDeviceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::EbsBlockDeviceConfig object:

  $service_obj->Method(Att1 => { VolumeSpecification => $value, ..., VolumesPerInstance => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::EbsBlockDeviceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->VolumeSpecification

=head1 DESCRIPTION

Configuration of requested EBS block device associated with the
instance group with count of volumes that will be associated to every
instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> VolumeSpecification => L<Paws::EMR::VolumeSpecification>

  EBS volume specifications such as volume type, IOPS, and size (GiB)
that will be requested for the EBS volume attached to an EC2 instance
in the cluster.


=head2 VolumesPerInstance => Int

  Number of EBS volumes with a specific volume configuration that will be
associated with every instance in the instance group



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

