
package Paws::DynamoDB::UpdateContributorInsightsOutput;
  use Moose;
  has ContributorInsightsStatus => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateContributorInsightsOutput

=head1 ATTRIBUTES


=head2 ContributorInsightsStatus => Str

The status of contributor insights

Valid values are: C<"ENABLING">, C<"ENABLED">, C<"DISABLING">, C<"DISABLED">, C<"FAILED">
=head2 IndexName => Str

The name of the global secondary index, if applicable.


=head2 TableName => Str

The name of the table.


=head2 _request_id => Str


=cut

1;