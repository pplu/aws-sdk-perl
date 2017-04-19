
package Paws::EC2::CreateDhcpOptionsResult;
  use Moose;
  has DhcpOptions => (is => 'ro', isa => 'Paws::EC2::DhcpOptions', request_name => 'dhcpOptions', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateDhcpOptionsResult

=head1 ATTRIBUTES


=head2 DhcpOptions => L<Paws::EC2::DhcpOptions>

A set of DHCP options.


=head2 _request_id => Str


=cut

