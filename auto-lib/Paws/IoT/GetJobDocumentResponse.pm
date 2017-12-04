
package Paws::IoT::GetJobDocumentResponse;
  use Moose;
  has Document => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'document');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetJobDocumentResponse

=head1 ATTRIBUTES


=head2 Document => Str

The job document content.


=head2 _request_id => Str


=cut

