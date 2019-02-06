package Paws::SageMaker::GitConfigForUpdate;
  use Moose;
  has SecretArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GitConfigForUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::GitConfigForUpdate object:

  $service_obj->Method(Att1 => { SecretArn => $value, ..., SecretArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::GitConfigForUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->SecretArn

=head1 DESCRIPTION

Specifies configuration details for a Git repository when the
repository is updated.

=head1 ATTRIBUTES


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

