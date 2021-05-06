
package Paws::DirectConnect::Lags;
  use Moose;
  has Lags => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Lag]', traits => ['NameInRequest'], request_name => 'lags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Lags

=head1 ATTRIBUTES


=head2 Lags => ArrayRef[L<Paws::DirectConnect::Lag>]

The LAGs.


=head2 _request_id => Str


=cut

1;