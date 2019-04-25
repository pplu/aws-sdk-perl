package Paws::CodeBuild::RegistryCredential;
  use Moose;
  has Credential => (is => 'ro', isa => 'Str', request_name => 'credential', traits => ['NameInRequest'], required => 1);
  has CredentialProvider => (is => 'ro', isa => 'Str', request_name => 'credentialProvider', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::RegistryCredential

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::RegistryCredential object:

  $service_obj->Method(Att1 => { Credential => $value, ..., CredentialProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::RegistryCredential object:

  $result = $service_obj->Method(...);
  $result->Att1->Credential

=head1 DESCRIPTION

Information about credentials that provide access to a private Docker
registry. When this is set:

=over

=item *

C<imagePullCredentialsType> must be set to C<SERVICE_ROLE>.

=item *

images cannot be curated or an Amazon ECR image.

=back

For more information, see Private Registry with AWS Secrets Manager
Samle for AWS CodeBuild
(http://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Credential => Str

  The Amazon Resource Name (ARN) or name of credentials created using AWS
Secrets Manager.

The C<credential> can use the name of the credentials only if they
exist in your current region.


=head2 B<REQUIRED> CredentialProvider => Str

  The service that created the credentials to access a private Docker
registry. The valid value, SECRETS_MANAGER, is for AWS Secrets Manager.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

