
package Paws::MTurk::GetAccountBalanceResponse;
  use Moose;
  has AvailableBalance => (is => 'ro', isa => 'Str');
  has OnHoldBalance => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetAccountBalanceResponse

=head1 ATTRIBUTES


=head2 AvailableBalance => Str




=head2 OnHoldBalance => Str




=head2 _request_id => Str


=cut

1;