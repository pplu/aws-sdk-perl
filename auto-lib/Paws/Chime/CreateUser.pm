
package Paws::Chime::CreateUser;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has Email => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
  has UserType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{accountId}/users?operation=create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateUser - Arguments for method CreateUser on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateUserResponse = $chime->CreateUser(
      AccountId => 'MyNonEmptyString',
      Email     => 'MyEmailAddress',     # OPTIONAL
      UserType  => 'PrivateUser',        # OPTIONAL
      Username  => 'MyString',           # OPTIONAL
    );

    # Results:
    my $User = $CreateUserResponse->User;

    # Returns a L<Paws::Chime::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 Email => Str

The user's email address.



=head2 Username => Str

The user name.



=head2 UserType => Str

The user type.

Valid values are: C<"PrivateUser">, C<"SharedDevice">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

