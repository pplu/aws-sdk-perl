
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
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');
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
      Tags     => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $UserArn = $CreateUserResponse->UserArn;
    my $UserId  = $CreateUserResponse->UserId;

    # Returns a L<Paws::Connect::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateUser>

=head1 ATTRIBUTES


=head2 DirectoryUserId => Str

The identifier of the user account in the directory used for identity
management. If Amazon Connect cannot access the directory, you can
specify this identifier to authenticate users. If you include the
identifier, we assume that Amazon Connect cannot access the directory.
Otherwise, the identity information is used to authenticate users from
your directory.

This parameter is required if you are using an existing directory for
identity management in Amazon Connect when Amazon Connect cannot access
your directory to authenticate users. If you are using SAML for
identity management and include this parameter, an error is returned.



=head2 HierarchyGroupId => Str

The identifier of the hierarchy group for the user.



=head2 IdentityInfo => L<Paws::Connect::UserIdentityInfo>

The information about the identity of the user.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 Password => Str

The password for the user account. A password is required if you are
using Amazon Connect for identity management. Otherwise, it is an error
to include a password.



=head2 B<REQUIRED> PhoneConfig => L<Paws::Connect::UserPhoneConfig>

The phone settings for the user.



=head2 B<REQUIRED> RoutingProfileId => Str

The identifier of the routing profile for the user.



=head2 B<REQUIRED> SecurityProfileIds => ArrayRef[Str|Undef]

The identifier of the security profile for the user.



=head2 Tags => L<Paws::Connect::TagMap>

One or more tags.



=head2 B<REQUIRED> Username => Str

The user name for the account. For instances not using SAML for
identity management, the user name can include up to 20 characters. If
you are using SAML for identity management, the user name can include
up to 64 characters from [a-zA-Z0-9_-.\@]+.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

