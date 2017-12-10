package Paws::CognitoIdp::UserType;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::AttributeType]');
  has Enabled => (is => 'ro', isa => 'Bool');
  has MFAOptions => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::MFAOptionType]');
  has UserCreateDate => (is => 'ro', isa => 'Str');
  has UserLastModifiedDate => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
  has UserStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UserType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::UserType object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., UserStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::UserType object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

The user type.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::CognitoIdp::AttributeType>]

  A container with information about the user type attributes.


=head2 Enabled => Bool

  Specifies whether the user is enabled.


=head2 MFAOptions => ArrayRef[L<Paws::CognitoIdp::MFAOptionType>]

  The MFA options for the user.


=head2 UserCreateDate => Str

  The creation date of the user.


=head2 UserLastModifiedDate => Str

  The last modified date of the user.


=head2 Username => Str

  The user name of the user you wish to describe.


=head2 UserStatus => Str

  The user status. Can be one of the following:

=over

=item *

UNCONFIRMED - User has been created but not confirmed.

=item *

CONFIRMED - User has been confirmed.

=item *

ARCHIVED - User is no longer active.

=item *

COMPROMISED - User is disabled due to a potential security threat.

=item *

UNKNOWN - User status is not known.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

