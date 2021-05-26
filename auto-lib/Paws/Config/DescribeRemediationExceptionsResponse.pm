
package Paws::Config::DescribeRemediationExceptionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RemediationExceptions => (is => 'ro', isa => 'ArrayRef[Paws::Config::RemediationException]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeRemediationExceptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 RemediationExceptions => ArrayRef[L<Paws::Config::RemediationException>]

Returns a list of remediation exception objects.


=head2 _request_id => Str


=cut

1;