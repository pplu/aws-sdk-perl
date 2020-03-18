package Paws::Detective::MemberDetail;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has GraphArn => (is => 'ro', isa => 'Str');
  has InvitedTime => (is => 'ro', isa => 'Str');
  has MasterId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::MemberDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Detective::MemberDetail object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UpdatedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Detective::MemberDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Amazon Detective is currently in preview.

Details about a member account that was invited to contribute to a
behavior graph.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The AWS account identifier for the member account.


=head2 EmailAddress => Str

  The AWS account root user email address for the member account.


=head2 GraphArn => Str

  The ARN of the behavior graph that the member account was invited to.


=head2 InvitedTime => Str

  The date and time that Detective sent the invitation to the member
account. The value is in milliseconds since the epoch.


=head2 MasterId => Str

  The AWS account identifier of the master account for the behavior
graph.


=head2 Status => Str

  The current membership status of the member account. The status can
have one of the following values:

=over

=item *

C<INVITED> - Indicates that the member was sent an invitation but has
not yet responded.

=item *

C<VERIFICATION_IN_PROGRESS> - Indicates that Detective is verifying
that the account identifier and email address provided for the member
account match. If they do match, then Detective sends the invitation.
If the email address and account identifier don't match, then the
member cannot be added to the behavior graph.

=item *

C<VERIFICATION_FAILED> - Indicates that the account and email address
provided for the member account do not match, and Detective did not
send an invitation to the account.

=item *

C<ENABLED> - Indicates that the member account accepted the invitation
to contribute to the behavior graph.

=back

Member accounts that declined an invitation or that were removed from
the behavior graph are not included.


=head2 UpdatedTime => Str

  The date and time that the member account was last updated. The value
is in milliseconds since the epoch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

