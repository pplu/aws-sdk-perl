
package Paws::Datasync::CreateTaskResponse;
  use Moose;
  has TaskArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateTaskResponse

=head1 ATTRIBUTES


=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task.


=head2 _request_id => Str


=cut

1;