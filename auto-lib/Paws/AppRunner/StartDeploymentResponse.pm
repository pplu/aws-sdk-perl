
package Paws::AppRunner::StartDeploymentResponse;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::StartDeploymentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationId => Str

The unique ID of the asynchronous operation that this request started.
You can use it combined with the ListOperations call to track the
operation's progress.


=head2 _request_id => Str


=cut

1;