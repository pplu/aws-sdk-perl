
package Paws::CloudSearch::DeleteAnalysisSchemeResponse;
  use Moose;
  has AnalysisScheme => (is => 'ro', isa => 'Paws::CloudSearch::AnalysisSchemeStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DeleteAnalysisSchemeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisScheme => L<Paws::CloudSearch::AnalysisSchemeStatus>

The status of the analysis scheme being deleted.


=head2 _request_id => Str


=cut

