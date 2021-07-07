
package Paws::Macie2::GetMemberResponse;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId');
  has AdministratorAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'administratorAccountId');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Email => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'email');
  has InvitedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invitedAt');
  has MasterAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'masterAccountId');
  has RelationshipStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationshipStatus');
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetMemberResponse

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID for the account.


=head2 AdministratorAccountId => Str

The Amazon Web Services account ID for the administrator account.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the account.


=head2 Email => Str

The email address for the account.


=head2 InvitedAt => Str

The date and time, in UTC and extended ISO 8601 format, when an Amazon
Macie membership invitation was last sent to the account. This value is
null if a Macie invitation hasn't been sent to the account.


=head2 MasterAccountId => Str

(Deprecated) The Amazon Web Services account ID for the administrator
account. This property has been replaced by the administratorAccountId
property and is retained only for backward compatibility.


=head2 RelationshipStatus => Str

The current status of the relationship between the account and the
administrator account.

Valid values are: C<"Enabled">, C<"Paused">, C<"Invited">, C<"Created">, C<"Removed">, C<"Resigned">, C<"EmailVerificationInProgress">, C<"EmailVerificationFailed">, C<"RegionDisabled">, C<"AccountSuspended">
=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that identifies the tags (keys and values)
that are associated with the member account in Amazon Macie.


=head2 UpdatedAt => Str

The date and time, in UTC and extended ISO 8601 format, of the most
recent change to the status of the relationship between the account and
the administrator account.


=head2 _request_id => Str


=cut

