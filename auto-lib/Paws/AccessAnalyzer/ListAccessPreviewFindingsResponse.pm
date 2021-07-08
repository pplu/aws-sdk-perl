
package Paws::AccessAnalyzer::ListAccessPreviewFindingsResponse;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::AccessPreviewFinding]', traits => ['NameInRequest'], request_name => 'findings', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListAccessPreviewFindingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::AccessAnalyzer::AccessPreviewFinding>]

A list of access preview findings that match the specified filter
criteria.


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 _request_id => Str


=cut

