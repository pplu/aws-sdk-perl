
package Paws::ResourceTagging::GetComplianceSummaryOutput;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');
  has SummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ResourceTagging::Summary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetComplianceSummaryOutput

=head1 ATTRIBUTES


=head2 PaginationToken => Str

A string that indicates that there is more data available than this
response contains. To receive the next part of the response, specify
this response value as the C<PaginationToken> value in the request for
the next page.


=head2 SummaryList => ArrayRef[L<Paws::ResourceTagging::Summary>]

A table that shows counts of noncompliant resources.


=head2 _request_id => Str


=cut

1;