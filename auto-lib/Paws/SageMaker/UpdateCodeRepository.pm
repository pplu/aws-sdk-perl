
package Paws::SageMaker::UpdateCodeRepository;
  use Moose;
  has CodeRepositoryName => (is => 'ro', isa => 'Str', required => 1);
  has GitConfig => (is => 'ro', isa => 'Paws::SageMaker::GitConfigForUpdate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCodeRepository');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateCodeRepositoryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateCodeRepository - Arguments for method UpdateCodeRepository on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCodeRepository on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateCodeRepository.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCodeRepository.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateCodeRepositoryOutput = $api . sagemaker->UpdateCodeRepository(
      CodeRepositoryName => 'MyEntityName',
      GitConfig          => {
        SecretArn => 'MySecretArn',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CodeRepositoryArn = $UpdateCodeRepositoryOutput->CodeRepositoryArn;

    # Returns a L<Paws::SageMaker::UpdateCodeRepositoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateCodeRepository>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryName => Str

The name of the Git repository to update.



=head2 GitConfig => L<Paws::SageMaker::GitConfigForUpdate>

The configuration of the git repository, including the URL and the
Amazon Resource Name (ARN) of the AWS Secrets Manager secret that
contains the credentials used to access the repository. The secret must
have a staging label of C<AWSCURRENT> and must be in the following
format:

C<{"username": I<UserName>, "password": I<Password>}>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCodeRepository in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

