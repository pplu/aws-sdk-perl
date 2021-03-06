
package Paws::AppRunner::PauseServiceResponse;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str');
  has Service => (is => 'ro', isa => 'Paws::AppRunner::Service', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::PauseServiceResponse

=head1 ATTRIBUTES


=head2 OperationId => Str

The unique ID of the asynchronous operation that this request started.
You can use it combined with the ListOperations call to track the
operation's progress.


=head2 B<REQUIRED> Service => L<Paws::AppRunner::Service>

A description of the App Runner service that this request just paused.


=head2 _request_id => Str


=cut

1;