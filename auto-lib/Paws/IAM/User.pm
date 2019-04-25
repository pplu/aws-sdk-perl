package Paws::IAM::User;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has PasswordLastUsed => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has PermissionsBoundary => (is => 'ro', isa => 'Paws::IAM::AttachedPermissionsBoundary');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::User

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::User object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::User object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an IAM user entity.

This data type is used as a response element in the following
operations:

=over

=item *

CreateUser

=item *

GetUser

=item *

ListUsers

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) that identifies the user. For more
information about ARNs and how to use ARNs in policies, see IAM
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> CreateDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the user was created.


=head2 PasswordLastUsed => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the user's password was last
used to sign in to an AWS website. For a list of AWS websites that
capture a user's last sign-in time, see the Credential Reports
(http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html)
topic in the I<Using IAM> guide. If a password is used more than once
in a five-minute span, only the first use is returned in this field. If
the field is null (no value), then it indicates that they never signed
in with a password. This can be because:

=over

=item *

The user never had a password.

=item *

A password exists but has not been used since IAM started tracking this
information on October 20, 2014.

=back

A null valuedoes not mean that the user I<never> had a password. Also,
if the user does not currently have a password, but had one in the
past, then this field contains the date and time the most recent
password was used.

This value is returned only in the GetUser and ListUsers operations.


=head2 B<REQUIRED> Path => Str

  The path to the user. For more information about paths, see IAM
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 PermissionsBoundary => L<Paws::IAM::AttachedPermissionsBoundary>

  The ARN of the policy used to set the permissions boundary for the
user.

For more information about permissions boundaries, see Permissions
Boundaries for IAM Identities in the I<IAM User Guide>.


=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

  A list of tags that are associated with the specified user. For more
information about tagging, see Tagging IAM Identities
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.


=head2 B<REQUIRED> UserId => Str

  The stable and unique string identifying the user. For more information
about IDs, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> UserName => Str

  The friendly name identifying the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

