
package Paws::Datasync::StartTaskExecutionResponse;
  use Moose;
  has TaskExecutionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::StartTaskExecutionResponse

=head1 ATTRIBUTES


=head2 TaskExecutionArn => Str

The Amazon Resource Name (ARN) of the specific task execution that was
started.


=head2 _request_id => Str


=cut

1;