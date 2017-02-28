
package Paws::MTurk::ListQualificationRequestsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NumResults => (is => 'ro', isa => 'Int');
  has QualificationRequests => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::QualificationRequest]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListQualificationRequestsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NumResults => Int

The number of Qualification requests on this page in the filtered
results list, equivalent to the number of Qualification requests being
returned by this call.


=head2 QualificationRequests => ArrayRef[L<Paws::MTurk::QualificationRequest>]

The Qualification request. The response includes one
QualificationRequest element for each Qualification request returned by
the query.


=head2 _request_id => Str


=cut

1;