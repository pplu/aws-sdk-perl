
package Paws::Glacier::ListMultipartUploadsOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has UploadsList => (is => 'ro', isa => 'ArrayRef[Paws::Glacier::UploadListElement]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListMultipartUploadsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

An opaque string that represents where to continue pagination of the
results. You use the marker in a new List Multipart Uploads request to
obtain more uploads in the list. If there are no more uploads, this
value is C<null>.


=head2 UploadsList => ArrayRef[L<Paws::Glacier::UploadListElement>]

A list of in-progress multipart uploads.


=head2 _request_id => Str


=cut

