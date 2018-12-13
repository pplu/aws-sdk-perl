
package Paws::Connect::CreateUser;
  use Moose;
  has DirectoryUserId => (is => 'ro', isa => 'Str');
  has HierarchyGroupId => (is => 'ro', isa => 'Str');
  has IdentityInfo => (is => 'ro', isa => 'Paws::Connect::UserIdentityInfo');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Password => (is => 'ro', isa => 'Str');
  has PhoneConfig => (is => 'ro', isa => 'Paws::Connect::UserPhoneConfig', required => 1);
  has RoutingProfileId => (is => 'ro', isa => 'Str', required => 1);
  has SecurityProfileIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/users/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateUser - Arguments for method CreateUser on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateUserResponse = $connect->CreateUser(
      InstanceId  => 'MyInstanceId',
      PhoneConfig => {
        PhoneType => 'SOFT_PHONE',    # values: SOFT_PHONE, DESK_PHONE
        AfterContactWorkTimeLimit => 1,                  # OPTIONAL
        AutoAccept                => 1,                  # OPTIONAL
        DeskPhoneNumber           => 'MyPhoneNumber',    # OPTIONAL
      },
      RoutingProfileId   => 'MyRoutingProfileId',
      SecurityProfileIds => [ 'MySecurityProfileId', ... ],
      Username           => 'MyAgentUsername',
      DirectoryUserId    => 'MyDirectoryUserId',              # OPTIONAL
      HierarchyGroupId   => 'MyHierarchyGroupId',             # OPTIONAL
      IdentityInfo       => {
        Email     => 'MyEmail',             # OPTIONAL
        FirstName => 'MyAgentFirstName',    # min: 1, max: 100; OPTIONAL
        LastName  => 'MyAgentLastName',     # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      Password => 'MyPassword',    # OPTIONAL
    );

    # Results:
    my $UserArn = $CreateUserResponse->UserArn;
    my $UserId  = $CreateUserResponse->UserId;

    # Returns a L<Paws::Connect::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateUser>

=head1 ATTRIBUTES


=head2 DirectoryUserId => Str

The unique identifier for the user account in the directory service
directory used for identity management. If Amazon Connect is unable to
access the existing directory, you can use the C<DirectoryUserId> to
authenticate users. If you include the parameter, it is assumed that
Amazon Connect cannot access the directory. If the parameter is not
included, the C<UserIdentityInfo> is used to authenticate users from
your existing directory.

This parameter is required if you are using an existing directory for
identity management in Amazon Connect when Amazon Connect cannot access
your directory to authenticate users. If you are using SAML for
identity management and include this parameter, an
C<InvalidRequestException> is returned.



=head2 HierarchyGroupId => Str

The unique identifier for the hierarchy group to assign to the user
created.



=head2 IdentityInfo => L<Paws::Connect::UserIdentityInfo>

Information about the user, including email address, first name, and
last name.



=head2 B<REQUIRED> InstanceId => Str

The identifier for your Amazon Connect instance. To find the ID of your
instance, open the AWS console and select Amazon Connect. Select the
alias of the instance in the Instance alias column. The instance ID is
displayed in the Overview section of your instance settings. For
example, the instance ID is the set of characters at the end of the
instance ARN, after instance/, such as
10a4c4eb-f57e-4d4c-b602-bf39176ced07.



=head2 Password => Str

The password for the user account to create. This is required if you
are using Amazon Connect for identity management. If you are using SAML
for identity management and include this parameter, an
C<InvalidRequestException> is returned.



=head2 B<REQUIRED> PhoneConfig => L<Paws::Connect::UserPhoneConfig>

Specifies the phone settings for the user, including
C<AfterContactWorkTimeLimit>, C<AutoAccept>, C<DeskPhoneNumber>, and
C<PhoneType>.



=head2 B<REQUIRED> RoutingProfileId => Str

The unique identifier for the routing profile to assign to the user
created.



=head2 B<REQUIRED> SecurityProfileIds => ArrayRef[Str|Undef]

The unique identifier of the security profile to assign to the user
created.



=head2 B<REQUIRED> Username => Str

The user name in Amazon Connect for the account to create. If you are
using SAML for identity management in your Amazon Connect, the value
for C<Username> can include up to 64 characters from [a-zA-Z0-9_-.\@]+.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

