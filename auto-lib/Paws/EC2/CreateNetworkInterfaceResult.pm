
package Paws::EC2::CreateNetworkInterfaceResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has NetworkInterface => (is => 'ro', isa => 'Paws::EC2::NetworkInterface', request_name => 'networkInterface', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkInterfaceResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 NetworkInterface => L<Paws::EC2::NetworkInterface>

Information about the network interface.


=head2 _request_id => Str


=cut

