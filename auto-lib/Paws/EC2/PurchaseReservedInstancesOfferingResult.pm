
package Paws::EC2::PurchaseReservedInstancesOfferingResult;
  use Moose;
  has ReservedInstancesId => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseReservedInstancesOfferingResult

=head1 ATTRIBUTES


=head2 ReservedInstancesId => Str

The IDs of the purchased Reserved Instances. If your purchase crosses
into a discounted pricing tier, the final Reserved Instances IDs might
change. For more information, see Crossing pricing tiers
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-reserved-instances-application.html#crossing-pricing-tiers)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 _request_id => Str


=cut

