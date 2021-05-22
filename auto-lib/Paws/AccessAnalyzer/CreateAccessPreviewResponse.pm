
package Paws::AccessAnalyzer::CreateAccessPreviewResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CreateAccessPreviewResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique ID for the access preview.


=head2 _request_id => Str


=cut

