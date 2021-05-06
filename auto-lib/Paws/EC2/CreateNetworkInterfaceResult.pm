
package Paws::EC2::CreateNetworkInterfaceResult;
  use Moose;
  has NetworkInterface => (is => 'ro', isa => 'Paws::EC2::NetworkInterface', request_name => 'networkInterface', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInterfaceResult

=head1 ATTRIBUTES


=head2 NetworkInterface => L<Paws::EC2::NetworkInterface>

Information about the network interface.


=head2 _request_id => Str


=cut

