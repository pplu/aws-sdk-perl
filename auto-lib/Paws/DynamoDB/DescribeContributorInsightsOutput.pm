
package Paws::DynamoDB::DescribeContributorInsightsOutput;
  use Moose;
  has ContributorInsightsRuleList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ContributorInsightsStatus => (is => 'ro', isa => 'Str');
  has FailureException => (is => 'ro', isa => 'Paws::DynamoDB::FailureException');
  has IndexName => (is => 'ro', isa => 'Str');
  has LastUpdateDateTime => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeContributorInsightsOutput

=head1 ATTRIBUTES


=head2 ContributorInsightsRuleList => ArrayRef[Str|Undef]

List of names of the associated Alpine rules.


=head2 ContributorInsightsStatus => Str

Current Status contributor insights.

Valid values are: C<"ENABLING">, C<"ENABLED">, C<"DISABLING">, C<"DISABLED">, C<"FAILED">
=head2 FailureException => L<Paws::DynamoDB::FailureException>

Returns information about the last failure that encountered.

The most common exceptions for a FAILED status are:

=over

=item *

LimitExceededException - Per-account Amazon CloudWatch Contributor
Insights rule limit reached. Please disable Contributor Insights for
other tables/indexes OR disable Contributor Insights rules before
retrying.

=item *

AccessDeniedException - Amazon CloudWatch Contributor Insights rules
cannot be modified due to insufficient permissions.

=item *

AccessDeniedException - Failed to create service-linked role for
Contributor Insights due to insufficient permissions.

=item *

InternalServerError - Failed to create Amazon CloudWatch Contributor
Insights rules. Please retry request.

=back



=head2 IndexName => Str

The name of the global secondary index being described.


=head2 LastUpdateDateTime => Str

Timestamp of the last time the status was changed.


=head2 TableName => Str

The name of the table being described.


=head2 _request_id => Str


=cut

1;