
package Paws::EC2::ModifyVpcPeeringConnectionOptionsResult;
  use Moose;
  has AccepterPeeringConnectionOptions => (is => 'ro', isa => 'Paws::EC2::PeeringConnectionOptions', request_name => 'accepterPeeringConnectionOptions', traits => ['NameInRequest',]);
  has RequesterPeeringConnectionOptions => (is => 'ro', isa => 'Paws::EC2::PeeringConnectionOptions', request_name => 'requesterPeeringConnectionOptions', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcPeeringConnectionOptionsResult

=head1 ATTRIBUTES


=head2 AccepterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptions>

Information about the VPC peering connection options for the accepter
VPC.


=head2 RequesterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptions>

Information about the VPC peering connection options for the requester
VPC.


=head2 _request_id => Str


=cut

