
package Paws::AppRunner::ListServicesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::ServiceSummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListServicesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that you can pass in a subsequent request to get the next
result page. It's returned in a paginated request.


=head2 B<REQUIRED> ServiceSummaryList => ArrayRef[L<Paws::AppRunner::ServiceSummary>]

A list of service summary information records. In a paginated request,
the request returns up to C<MaxResults> records for each call.


=head2 _request_id => Str


=cut

1;