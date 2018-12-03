
package Paws::SageMaker::DeleteWorkteamResponse;
  use Moose;
  has Success => (is => 'ro', isa => 'Bool', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteWorkteamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Success => Bool

Returns C<true> if the work team was successfully deleted; otherwise,
returns C<false>.


=head2 _request_id => Str


=cut

1;