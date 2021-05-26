
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

A string that indicates that the response contains more data than can
be returned in a single response. To receive additional data, specify
this string for the C<PaginationToken> value in a subsequent request.


=head2 SummaryList => ArrayRef[L<Paws::ResourceTagging::Summary>]

A table that shows counts of noncompliant resources.


=head2 _request_id => Str


=cut

1;