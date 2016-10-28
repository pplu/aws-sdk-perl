
package Paws::DirectConnect::DescribeInterconnectLoaResponse;
  use Moose;
  has Loa => (is => 'ro', isa => 'Paws::DirectConnect::Loa', traits => ['Unwrapped'], xmlname => 'loa' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeInterconnectLoaResponse

=head1 ATTRIBUTES


=head2 Loa => L<Paws::DirectConnect::Loa>






=cut

1;