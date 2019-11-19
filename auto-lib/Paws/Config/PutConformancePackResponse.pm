
package Paws::Config::PutConformancePackResponse;
  use Moose;
  has ConformancePackArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutConformancePackResponse

=head1 ATTRIBUTES


=head2 ConformancePackArn => Str

ARN of the conformance pack.


=head2 _request_id => Str


=cut

1;