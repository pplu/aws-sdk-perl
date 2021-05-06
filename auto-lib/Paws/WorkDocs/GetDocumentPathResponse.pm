
package Paws::WorkDocs::GetDocumentPathResponse;
  use Moose;
  has Path => (is => 'ro', isa => 'Paws::WorkDocs::ResourcePath');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocumentPathResponse

=head1 ATTRIBUTES


=head2 Path => L<Paws::WorkDocs::ResourcePath>

The path information.


=head2 _request_id => Str


=cut

