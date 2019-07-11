
package Paws::Config::StartRemediationExecutionResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'ArrayRef[Paws::Config::ResourceKey]');
  has FailureMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::StartRemediationExecutionResponse

=head1 ATTRIBUTES


=head2 FailedItems => ArrayRef[L<Paws::Config::ResourceKey>]

For resources that have failed to start execution, the API returns a
resource key object.


=head2 FailureMessage => Str

Returns a failure message. For example, the resource is already
compliant.


=head2 _request_id => Str


=cut

1;