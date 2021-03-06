# Generated by default/object.tt
package Paws::AmplifyBackend::CreateBackendAuthIdentityPoolConfig;
  use Moose;
  has IdentityPoolName => (is => 'ro', isa => 'Str', request_name => 'identityPoolName', traits => ['NameInRequest'], required => 1);
  has UnauthenticatedLogin => (is => 'ro', isa => 'Bool', request_name => 'unauthenticatedLogin', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend::CreateBackendAuthIdentityPoolConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyBackend::CreateBackendAuthIdentityPoolConfig object:

  $service_obj->Method(Att1 => { IdentityPoolName => $value, ..., UnauthenticatedLogin => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyBackend::CreateBackendAuthIdentityPoolConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->IdentityPoolName

=head1 DESCRIPTION

Describes authorization configurations for the auth resources,
configured as a part of your Amplify project.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityPoolName => Str

Name of the Amazon Cognito identity pool used for authorization.


=head2 B<REQUIRED> UnauthenticatedLogin => Bool

Set to true or false based on whether you want to enable guest
authorization to your Amplify app.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyBackend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

