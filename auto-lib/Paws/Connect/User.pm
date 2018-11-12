package Paws::Connect::User;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has DirectoryUserId => (is => 'ro', isa => 'Str');
  has HierarchyGroupId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IdentityInfo => (is => 'ro', isa => 'Paws::Connect::UserIdentityInfo');
  has PhoneConfig => (is => 'ro', isa => 'Paws::Connect::UserPhoneConfig');
  has RoutingProfileId => (is => 'ro', isa => 'Str');
  has SecurityProfileIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Username => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::User

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::User object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::User object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A C<User> object that contains information about a user account in your
Amazon Connect instance, including configuration settings.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the user account.


=head2 DirectoryUserId => Str

  The directory Id for the user account in the existing directory used
for identity management.


=head2 HierarchyGroupId => Str

  The identifier for the hierarchy group assigned to the user.


=head2 Id => Str

  The identifier of the user account.


=head2 IdentityInfo => L<Paws::Connect::UserIdentityInfo>

  A C<UserIdentityInfo> object.


=head2 PhoneConfig => L<Paws::Connect::UserPhoneConfig>

  A C<UserPhoneConfig> object.


=head2 RoutingProfileId => Str

  The identifier of the routing profile assigned to the user.


=head2 SecurityProfileIds => ArrayRef[Str|Undef]

  The identifier(s) for the security profile assigned to the user.


=head2 Username => Str

  The user name assigned to the user account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

