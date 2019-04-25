
package Paws::SageMaker::UpdateCodeRepositoryOutput;
  use Moose;
  has CodeRepositoryArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateCodeRepositoryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryArn => Str

The ARN of the Git repository.


=head2 _request_id => Str


=cut

1;