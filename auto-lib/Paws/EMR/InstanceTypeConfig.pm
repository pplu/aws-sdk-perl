package Paws::EMR::InstanceTypeConfig;
  use Moose;
  has BidPrice => (is => 'ro', isa => 'Str');
  has BidPriceAsPercentageOfOnDemandPrice => (is => 'ro', isa => 'Num');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has EbsConfiguration => (is => 'ro', isa => 'Paws::EMR::EbsConfiguration');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has WeightedCapacity => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::InstanceTypeConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::InstanceTypeConfig object:

  $service_obj->Method(Att1 => { BidPrice => $value, ..., WeightedCapacity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::InstanceTypeConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->BidPrice

=head1 DESCRIPTION

An instance type configuration for each instance type in an instance
fleet, which determines the EC2 instances Amazon EMR attempts to
provision to fulfill On-Demand and Spot target capacities. There can be
a maximum of 5 instance type configurations in a fleet.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

=head1 ATTRIBUTES


=head2 BidPrice => Str

  The bid price for each EC2 Spot instance type as defined by
C<InstanceType>. Expressed in USD. If neither C<BidPrice> nor
C<BidPriceAsPercentageOfOnDemandPrice> is provided,
C<BidPriceAsPercentageOfOnDemandPrice> defaults to 100%.


=head2 BidPriceAsPercentageOfOnDemandPrice => Num

  The bid price, as a percentage of On-Demand price, for each EC2 Spot
instance as defined by C<InstanceType>. Expressed as a number (for
example, 20 specifies 20%). If neither C<BidPrice> nor
C<BidPriceAsPercentageOfOnDemandPrice> is provided,
C<BidPriceAsPercentageOfOnDemandPrice> defaults to 100%.


=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  A configuration classification that applies when provisioning cluster
instances, which can include configurations for applications and
software that run on the cluster.


=head2 EbsConfiguration => L<Paws::EMR::EbsConfiguration>

  The configuration of Amazon Elastic Block Storage (EBS) attached to
each instance as defined by C<InstanceType>.


=head2 B<REQUIRED> InstanceType => Str

  An EC2 instance type, such as C<m3.xlarge>.


=head2 WeightedCapacity => Int

  The number of units that a provisioned instance of this type provides
toward fulfilling the target capacities defined in InstanceFleetConfig.
This value is 1 for a master instance fleet, and must be 1 or greater
for core and task instance fleets. Defaults to 1 if not specified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

