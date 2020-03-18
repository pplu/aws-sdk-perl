package Paws::RDS::UserAuthConfig;
  use Moose;
  has AuthScheme => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IAMAuth => (is => 'ro', isa => 'Str');
  has SecretArn => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::UserAuthConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::UserAuthConfig object:

  $service_obj->Method(Att1 => { AuthScheme => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::UserAuthConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthScheme

=head1 DESCRIPTION

This is prerelease documentation for the RDS Database Proxy feature in
preview release. It is subject to change.

Specifies the details of authentication used by a proxy to log in as a
specific database user.

=head1 ATTRIBUTES


=head2 AuthScheme => Str

  The type of authentication that the proxy uses for connections from the
proxy to the underlying database.


=head2 Description => Str

  A user-specified description about the authentication used by a proxy
to log in as a specific database user.


=head2 IAMAuth => Str

  Whether to require or disallow AWS Identity and Access Management (IAM)
authentication for connections to the proxy.


=head2 SecretArn => Str

  The Amazon Resource Name (ARN) representing the secret that the proxy
uses to authenticate to the RDS DB instance or Aurora DB cluster. These
secrets are stored within Amazon Secrets Manager.


=head2 UserName => Str

  The name of the database user to which the proxy connects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

