
package Paws::SageMaker::CreateContextResponse;
  use Moose;
  has ContextArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateContextResponse

=head1 ATTRIBUTES


=head2 ContextArn => Str

The Amazon Resource Name (ARN) of the context.


=head2 _request_id => Str


=cut

1;