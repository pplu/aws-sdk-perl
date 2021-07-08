
package Paws::Synthetics::GetCanaryResponse;
  use Moose;
  has Canary => (is => 'ro', isa => 'Paws::Synthetics::Canary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::GetCanaryResponse

=head1 ATTRIBUTES


=head2 Canary => L<Paws::Synthetics::Canary>

A strucure that contains the full information about the canary.


=head2 _request_id => Str


=cut

