package Paws::SageMaker::GitConfig;
  use Moose;
  has Branch => (is => 'ro', isa => 'Str');
  has RepositoryUrl => (is => 'ro', isa => 'Str', required => 1);
  has SecretArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GitConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::GitConfig object:

  $service_obj->Method(Att1 => { Branch => $value, ..., SecretArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::GitConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Branch

=head1 DESCRIPTION

Specifies configuration details for a Git repository in your AWS
account.

=head1 ATTRIBUTES


=head2 Branch => Str

  The default branch for the Git repository.


=head2 B<REQUIRED> RepositoryUrl => Str

  The URL where the Git repository is located.


=head2 SecretArn => Str

  The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that
contains the credentials used to access the git repository. The secret
must have a staging label of C<AWSCURRENT> and must be in the following
format:

C<{"username": I<UserName>, "password": I<Password>}>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

