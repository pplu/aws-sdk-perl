
package Paws::DirectConnect::StopBgpFailoverTestResponse;
  use Moose;
  has VirtualInterfaceTest => (is => 'ro', isa => 'Paws::DirectConnect::VirtualInterfaceTestHistory', traits => ['NameInRequest'], request_name => 'virtualInterfaceTest' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::StopBgpFailoverTestResponse

=head1 ATTRIBUTES


=head2 VirtualInterfaceTest => L<Paws::DirectConnect::VirtualInterfaceTestHistory>

Information about the virtual interface failover test.


=head2 _request_id => Str


=cut

1;