package Paws::SageMaker::CodeRepositorySummary;
  use Moose;
  has CodeRepositoryArn => (is => 'ro', isa => 'Str', required => 1);
  has CodeRepositoryName => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has GitConfig => (is => 'ro', isa => 'Paws::SageMaker::GitConfig');
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CodeRepositorySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CodeRepositorySummary object:

  $service_obj->Method(Att1 => { CodeRepositoryArn => $value, ..., LastModifiedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CodeRepositorySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeRepositoryArn

=head1 DESCRIPTION

Specifies summary information about a Git repository.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeRepositoryArn => Str

  The Amazon Resource Name (ARN) of the Git repository.


=head2 B<REQUIRED> CodeRepositoryName => Str

  The name of the Git repository.


=head2 B<REQUIRED> CreationTime => Str

  The date and time that the Git repository was created.


=head2 GitConfig => L<Paws::SageMaker::GitConfig>

  Configuration details for the Git repository, including the URL where
it is located and the ARN of the AWS Secrets Manager secret that
contains the credentials used to access the repository.


=head2 B<REQUIRED> LastModifiedTime => Str

  The date and time that the Git repository was last modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

