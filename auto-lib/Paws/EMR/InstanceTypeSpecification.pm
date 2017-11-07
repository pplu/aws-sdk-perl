package Paws::EMR::InstanceTypeSpecification;
  use Moose;
  has BidPrice => (is => 'ro', isa => 'Str');
  has BidPriceAsPercentageOfOnDemandPrice => (is => 'ro', isa => 'Num');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has EbsBlockDevices => (is => 'ro', isa => 'ArrayRef[Paws::EMR::EbsBlockDevice]');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has InstanceType => (is => 'ro', isa => 'Str');
  has WeightedCapacity => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceTypeSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceTypeSpecification object:

  $service_obj->Method(Att1 => { BidPrice => $value, ..., WeightedCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceTypeSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->BidPrice

=head1 DESCRIPTION

The configuration specification for each instance type in an instance
fleet.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

=head1 ATTRIBUTES


=head2 BidPrice => Str

  The bid price for each EC2 Spot instance type as defined by
C<InstanceType>. Expressed in USD.


=head2 BidPriceAsPercentageOfOnDemandPrice => Num

  The bid price, as a percentage of On-Demand price, for each EC2 Spot
instance as defined by C<InstanceType>. Expressed as a number (for
example, 20 specifies 20%).


=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  A configuration classification that applies when provisioning cluster
instances, which can include configurations for applications and
software bundled with Amazon EMR.


=head2 EbsBlockDevices => ArrayRef[L<Paws::EMR::EbsBlockDevice>]

  The configuration of Amazon Elastic Block Storage (EBS) attached to
each instance as defined by C<InstanceType>.


=head2 EbsOptimized => Bool

  Evaluates to C<TRUE> when the specified C<InstanceType> is
EBS-optimized.


=head2 InstanceType => Str

  The EC2 instance type, for example C<m3.xlarge>.


=head2 WeightedCapacity => Int

  The number of units that a provisioned instance of this type provides
toward fulfilling the target capacities defined in InstanceFleetConfig.
Capacity values represent performance characteristics such as vCPUs,
memory, or I/O. If not specified, the default value is 1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

