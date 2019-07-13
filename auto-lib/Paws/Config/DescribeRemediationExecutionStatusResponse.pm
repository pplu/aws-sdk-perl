
package Paws::Config::DescribeRemediationExecutionStatusResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RemediationExecutionStatuses => (is => 'ro', isa => 'ArrayRef[Paws::Config::RemediationExecutionStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRemediationExecutionStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 RemediationExecutionStatuses => ArrayRef[L<Paws::Config::RemediationExecutionStatus>]

Returns a list of remediation execution statuses objects.


=head2 _request_id => Str


=cut

1;