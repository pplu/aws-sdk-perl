package Paws::Chime::User;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has InvitedOn => (is => 'ro', isa => 'Str');
  has LicenseType => (is => 'ro', isa => 'Str');
  has PersonalPIN => (is => 'ro', isa => 'Str');
  has PrimaryEmail => (is => 'ro', isa => 'Str');
  has RegisteredOn => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserInvitationStatus => (is => 'ro', isa => 'Str');
  has UserRegistrationStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::User

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::User object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UserRegistrationStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::User object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The user on the Amazon Chime account.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The Amazon Chime account ID.


=head2 DisplayName => Str

  The display name of the user.


=head2 InvitedOn => Str

  Date and time when the user is invited to the Amazon Chime account, in
ISO 8601 format.


=head2 LicenseType => Str

  The license type for the user.


=head2 PersonalPIN => Str

  The user's personal meeting PIN.


=head2 PrimaryEmail => Str

  The primary email address of the user.


=head2 RegisteredOn => Str

  Date and time when the user is registered, in ISO 8601 format.


=head2 B<REQUIRED> UserId => Str

  The user ID.


=head2 UserInvitationStatus => Str

  The user invite status.


=head2 UserRegistrationStatus => Str

  The user registration status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

