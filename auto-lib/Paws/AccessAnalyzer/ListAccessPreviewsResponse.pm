
package Paws::AccessAnalyzer::ListAccessPreviewsResponse;
  use Moose;
  has AccessPreviews => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::AccessPreviewSummary]', traits => ['NameInRequest'], request_name => 'accessPreviews', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListAccessPreviewsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPreviews => ArrayRef[L<Paws::AccessAnalyzer::AccessPreviewSummary>]

A list of access previews retrieved for the analyzer.


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 _request_id => Str


=cut

