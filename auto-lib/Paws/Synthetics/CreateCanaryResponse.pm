
package Paws::Synthetics::CreateCanaryResponse;
  use Moose;
  has Canary => (is => 'ro', isa => 'Paws::Synthetics::Canary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::CreateCanaryResponse

=head1 ATTRIBUTES


=head2 Canary => L<Paws::Synthetics::Canary>

The full details about the canary you have created.


=head2 _request_id => Str


=cut

