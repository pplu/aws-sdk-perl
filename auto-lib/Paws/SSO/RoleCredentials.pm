package Paws::SSO::RoleCredentials;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', request_name => 'accessKeyId', traits => ['NameInRequest']);
  has Expiration => (is => 'ro', isa => 'Int', request_name => 'expiration', traits => ['NameInRequest']);
  has SecretAccessKey => (is => 'ro', isa => 'Str', request_name => 'secretAccessKey', traits => ['NameInRequest']);
  has SessionToken => (is => 'ro', isa => 'Str', request_name => 'sessionToken', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSO::RoleCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSO::RoleCredentials object:

  $service_obj->Method(Att1 => { AccessKeyId => $value, ..., SessionToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSO::RoleCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyId

=head1 DESCRIPTION

Provides information about the role credentials that are assigned to
the user.

=head1 ATTRIBUTES


=head2 AccessKeyId => Str

  The identifier used for the temporary security credentials. For more
information, see Using Temporary Security Credentials to Request Access
to AWS Resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html)
in the I<AWS IAM User Guide>.


=head2 Expiration => Int

  The date on which temporary security credentials expire.


=head2 SecretAccessKey => Str

  The key that is used to sign the request. For more information, see
Using Temporary Security Credentials to Request Access to AWS Resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html)
in the I<AWS IAM User Guide>.


=head2 SessionToken => Str

  The token used for temporary credentials. For more information, see
Using Temporary Security Credentials to Request Access to AWS Resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html)
in the I<AWS IAM User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSO>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

