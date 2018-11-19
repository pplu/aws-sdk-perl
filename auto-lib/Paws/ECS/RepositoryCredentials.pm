package Paws::ECS::RepositoryCredentials;
  use Moose;
  has CredentialsParameter => (is => 'ro', isa => 'Str', request_name => 'credentialsParameter', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::RepositoryCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::RepositoryCredentials object:

  $service_obj->Method(Att1 => { CredentialsParameter => $value, ..., CredentialsParameter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::RepositoryCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->CredentialsParameter

=head1 DESCRIPTION

The repository credentials for private registry authentication.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CredentialsParameter => Str

  The Amazon Resource Name (ARN) of the secret containing the private
repository credentials.

When you are using the Amazon ECS API, AWS CLI, or AWS SDK, if the
secret exists in the same Region as the task that you are launching
then you can use either the full ARN or the name of the secret. When
you are using the AWS Management Console, you must specify the full ARN
of the secret.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

