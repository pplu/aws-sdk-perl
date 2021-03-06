
package Paws::EC2::ResetAddressAttributeResult;
  use Moose;
  has Address => (is => 'ro', isa => 'Paws::EC2::AddressAttribute', request_name => 'address', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ResetAddressAttributeResult

=head1 ATTRIBUTES


=head2 Address => L<Paws::EC2::AddressAttribute>

Information about the IP address.


=head2 _request_id => Str


=cut

