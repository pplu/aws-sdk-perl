
package Paws::EC2::DescribeReservedInstancesOfferingsResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has NextToken => (is => 'ro', isa => 'Str', xmlname => 'nextToken', traits => ['Unwrapped',]);
  has ReservedInstancesOfferings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstancesOffering]', xmlname => 'reservedInstancesOfferingsSet', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesOfferingsResult

=head1 ATTRIBUTES

=head2 NextToken => Str

  

The next paginated set of results to return.









=head2 ReservedInstancesOfferings => ArrayRef[Paws::EC2::ReservedInstancesOffering]

  

A list of Reserved Instances offerings.











=cut

