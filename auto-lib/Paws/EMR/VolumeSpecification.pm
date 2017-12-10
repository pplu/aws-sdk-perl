package Paws::EMR::VolumeSpecification;
  use Moose;
  has Iops => (is => 'ro', isa => 'Int');
  has SizeInGB => (is => 'ro', isa => 'Int', required => 1);
  has VolumeType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::VolumeSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::VolumeSpecification object:

  $service_obj->Method(Att1 => { Iops => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::VolumeSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Iops

=head1 DESCRIPTION

EBS volume specifications such as volume type, IOPS, and size (GiB)
that will be requested for the EBS volume attached to an EC2 instance
in the cluster.

=head1 ATTRIBUTES


=head2 Iops => Int

  The number of I/O operations per second (IOPS) that the volume
supports.


=head2 B<REQUIRED> SizeInGB => Int

  The volume size, in gibibytes (GiB). This can be a number from 1 -
1024. If the volume type is EBS-optimized, the minimum value is 10.


=head2 B<REQUIRED> VolumeType => Str

  The volume type. Volume types supported are gp2, io1, standard.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

