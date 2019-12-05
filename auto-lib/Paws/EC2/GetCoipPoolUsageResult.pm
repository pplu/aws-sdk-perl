
package Paws::EC2::GetCoipPoolUsageResult;
  use Moose;
  has CoipAddressUsages => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CoipAddressUsage]', request_name => 'coipAddressUsageSet', traits => ['NameInRequest',]);
  has CoipPoolId => (is => 'ro', isa => 'Str', request_name => 'coipPoolId', traits => ['NameInRequest',]);
  has LocalGatewayRouteTableId => (is => 'ro', isa => 'Str', request_name => 'localGatewayRouteTableId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetCoipPoolUsageResult

=head1 ATTRIBUTES


=head2 CoipAddressUsages => ArrayRef[L<Paws::EC2::CoipAddressUsage>]

Information about the address usage.


=head2 CoipPoolId => Str

The ID of the customer-owned address pool.


=head2 LocalGatewayRouteTableId => Str

The ID of the local gateway route table.


=head2 _request_id => Str


=cut

