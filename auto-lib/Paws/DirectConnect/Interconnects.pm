
package Paws::DirectConnect::Interconnects;
  use Moose;
  has Interconnects => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Interconnect]', traits => ['Unwrapped'], xmlname => 'interconnects' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Interconnects

=head1 ATTRIBUTES


=head2 Interconnects => ArrayRef[L<Paws::DirectConnect::Interconnect>]

A list of interconnects.


=head2 _request_id => Str


=cut

1;