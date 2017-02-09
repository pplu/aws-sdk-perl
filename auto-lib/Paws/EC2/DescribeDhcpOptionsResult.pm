
package Paws::EC2::DescribeDhcpOptionsResult;
  use Moose;
  has DhcpOptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DhcpOptions]', request_name => 'dhcpOptionsSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeDhcpOptionsResult

=head1 ATTRIBUTES


=head2 DhcpOptions => ArrayRef[L<Paws::EC2::DhcpOptions>]

Information about one or more DHCP options sets.


=head2 _request_id => Str


=cut

