
package Paws::SageMaker::DeleteActionResponse;
  use Moose;
  has ActionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteActionResponse

=head1 ATTRIBUTES


=head2 ActionArn => Str

The Amazon Resource Name (ARN) of the action.


=head2 _request_id => Str


=cut

1;