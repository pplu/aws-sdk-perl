
package Paws::SageMaker::CreateCodeRepositoryOutput;
  use Moose;
  has CodeRepositoryArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateCodeRepositoryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryArn => Str

The Amazon Resource Name (ARN) of the new repository.


=head2 _request_id => Str


=cut

1;