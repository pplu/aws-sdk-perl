
package Paws::DirectConnect::DescribeConnectionLoaResponse;
  use Moose;
  has Loa => (is => 'ro', isa => 'Paws::DirectConnect::Loa', traits => ['Unwrapped'], xmlname => 'loa' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeConnectionLoaResponse

=head1 ATTRIBUTES


=head2 Loa => L<Paws::DirectConnect::Loa>






=cut

1;