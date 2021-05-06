
package Paws::MTurk::GetFileUploadURLResponse;
  use Moose;
  has FileUploadURL => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetFileUploadURLResponse

=head1 ATTRIBUTES


=head2 FileUploadURL => Str

A temporary URL for the file that the Worker uploaded for the answer.


=head2 _request_id => Str


=cut

1;