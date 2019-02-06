
package Paws::SageMaker::DescribeCodeRepositoryOutput;
  use Moose;
  has CodeRepositoryArn => (is => 'ro', isa => 'Str', required => 1);
  has CodeRepositoryName => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has GitConfig => (is => 'ro', isa => 'Paws::SageMaker::GitConfig');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeCodeRepositoryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryArn => Str

The Amazon Resource Name (ARN) of the Git repository.


=head2 B<REQUIRED> CodeRepositoryName => Str

The name of the Git repository.


=head2 B<REQUIRED> CreationTime => Str

The date and time that the repository was created.


=head2 GitConfig => L<Paws::SageMaker::GitConfig>

Configuration details about the repository, including the URL where the
repository is located, the default branch, and the Amazon Resource Name
(ARN) of the AWS Secrets Manager secret that contains the credentials
used to access the repository.


=head2 B<REQUIRED> LastModifiedTime => Str

The date and time that the repository was last changed.


=head2 _request_id => Str


=cut

1;