
package Paws::EC2::CreateSubnetResult;
  use Moose;
  has Subnet => (is => 'ro', isa => 'Paws::EC2::Subnet', request_name => 'subnet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateSubnetResult

=head1 ATTRIBUTES


=head2 Subnet => L<Paws::EC2::Subnet>

Information about the subnet.


=head2 _request_id => Str


=cut

