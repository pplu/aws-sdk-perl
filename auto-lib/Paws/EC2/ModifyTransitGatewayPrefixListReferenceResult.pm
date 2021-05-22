
package Paws::EC2::ModifyTransitGatewayPrefixListReferenceResult;
  use Moose;
  has TransitGatewayPrefixListReference => (is => 'ro', isa => 'Paws::EC2::TransitGatewayPrefixListReference', request_name => 'transitGatewayPrefixListReference', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTransitGatewayPrefixListReferenceResult

=head1 ATTRIBUTES


=head2 TransitGatewayPrefixListReference => L<Paws::EC2::TransitGatewayPrefixListReference>

Information about the prefix list reference.


=head2 _request_id => Str


=cut

