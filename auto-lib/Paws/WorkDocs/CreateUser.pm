
package Paws::WorkDocs::CreateUser;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has GivenName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str');
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has StorageRule => (is => 'ro', isa => 'Paws::WorkDocs::StorageRuleType');
  has Surname => (is => 'ro', isa => 'Str', required => 1);
  has TimeZoneId => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::CreateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateUser - Arguments for method CreateUser on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $CreateUserResponse = $workdocs->CreateUser(
      GivenName           => 'MyUserAttributeValueType',
      Password            => 'MyPasswordType',
      Surname             => 'MyUserAttributeValueType',
      Username            => 'MyUsernameType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      EmailAddress        => 'MyEmailAddressType',            # OPTIONAL
      OrganizationId      => 'MyIdType',                      # OPTIONAL
      StorageRule         => {
        StorageAllocatedInBytes => 1,                         # OPTIONAL
        StorageType => 'UNLIMITED',    # values: UNLIMITED, QUOTA; OPTIONAL
      },    # OPTIONAL
      TimeZoneId => 'MyTimeZoneIdType',    # OPTIONAL
    );

    # Results:
    my $User = $CreateUserResponse->User;

    # Returns a L<Paws::WorkDocs::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/CreateUser>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 EmailAddress => Str

The email address of the user.



=head2 B<REQUIRED> GivenName => Str

The given name of the user.



=head2 OrganizationId => Str

The ID of the organization.



=head2 B<REQUIRED> Password => Str

The password of the user.



=head2 StorageRule => L<Paws::WorkDocs::StorageRuleType>

The amount of storage for the user.



=head2 B<REQUIRED> Surname => Str

The surname of the user.



=head2 TimeZoneId => Str

The time zone ID of the user.



=head2 B<REQUIRED> Username => Str

The login name of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

