package Paws::EMR::EbsConfiguration;
  use Moose;
  has EbsBlockDeviceConfigs => (is => 'ro', isa => 'ArrayRef[Paws::EMR::EbsBlockDeviceConfig]');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::EbsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::EbsConfiguration object:

  $service_obj->Method(Att1 => { EbsBlockDeviceConfigs => $value, ..., EbsOptimized => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::EbsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EbsBlockDeviceConfigs

=head1 DESCRIPTION

The Amazon EBS configuration of a cluster instance.

=head1 ATTRIBUTES


=head2 EbsBlockDeviceConfigs => ArrayRef[L<Paws::EMR::EbsBlockDeviceConfig>]

  An array of Amazon EBS volume specifications attached to a cluster
instance.


=head2 EbsOptimized => Bool

  Indicates whether an Amazon EBS volume is EBS-optimized.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

