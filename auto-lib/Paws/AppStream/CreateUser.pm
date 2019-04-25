
package Paws::AppStream::CreateUser;
  use Moose;
  has AuthenticationType => (is => 'ro', isa => 'Str', required => 1);
  has FirstName => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has MessageAction => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateUserResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateUser - Arguments for method CreateUser on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateUserResult = $appstream2->CreateUser(
      AuthenticationType => 'API',
      UserName           => 'MyUsername',
      FirstName          => 'MyUserAttributeValue',    # OPTIONAL
      LastName           => 'MyUserAttributeValue',    # OPTIONAL
      MessageAction      => 'SUPPRESS',                # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthenticationType => Str

The authentication type for the user. You must specify USERPOOL.

Valid values are: C<"API">, C<"SAML">, C<"USERPOOL">

=head2 FirstName => Str

The first name, or given name, of the user.



=head2 LastName => Str

The last name, or surname, of the user.



=head2 MessageAction => Str

The action to take for the welcome email that is sent to a user after
the user is created in the user pool. If you specify SUPPRESS, no email
is sent. If you specify RESEND, do not specify the first name or last
name of the user. If the value is null, the email is sent.

The temporary password in the welcome email is valid for only 7 days.
If users donE<rsquo>t set their passwords within 7 days, you must send
them a new welcome email.

Valid values are: C<"SUPPRESS">, C<"RESEND">

=head2 B<REQUIRED> UserName => Str

The email address of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

