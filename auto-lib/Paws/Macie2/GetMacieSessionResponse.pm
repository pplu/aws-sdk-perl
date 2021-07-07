
package Paws::Macie2::GetMacieSessionResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has FindingPublishingFrequency => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'findingPublishingFrequency');
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetMacieSessionResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The date and time, in UTC and extended ISO 8601 format, when the Amazon
Macie account was created.


=head2 FindingPublishingFrequency => Str

The frequency with which Macie publishes updates to policy findings for
the account. This includes publishing updates to Security Hub and
Amazon EventBridge (formerly called Amazon CloudWatch Events).

Valid values are: C<"FIFTEEN_MINUTES">, C<"ONE_HOUR">, C<"SIX_HOURS">
=head2 ServiceRole => Str

The Amazon Resource Name (ARN) of the service-linked role that allows
Macie to monitor and analyze data in Amazon Web Services resources for
the account.


=head2 Status => Str

The current status of the Macie account. Possible values are: PAUSED,
the account is enabled but all Macie activities are suspended (paused)
for the account; and, ENABLED, the account is enabled and all Macie
activities are enabled for the account.

Valid values are: C<"PAUSED">, C<"ENABLED">
=head2 UpdatedAt => Str

The date and time, in UTC and extended ISO 8601 format, of the most
recent change to the status of the Macie account.


=head2 _request_id => Str


=cut

