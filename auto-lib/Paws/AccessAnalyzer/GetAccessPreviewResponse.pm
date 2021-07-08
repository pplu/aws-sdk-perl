
package Paws::AccessAnalyzer::GetAccessPreviewResponse;
  use Moose;
  has AccessPreview => (is => 'ro', isa => 'Paws::AccessAnalyzer::AccessPreview', traits => ['NameInRequest'], request_name => 'accessPreview', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::GetAccessPreviewResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessPreview => L<Paws::AccessAnalyzer::AccessPreview>

An object that contains information about the access preview.


=head2 _request_id => Str


=cut

