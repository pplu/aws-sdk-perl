
package Paws::IoTThingsGraph::UploadEntityDefinitionsResponse;
  use Moose;
  has UploadId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uploadId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UploadEntityDefinitionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UploadId => Str

The ID that specifies the upload action. You can use this to track the
status of the upload.


=head2 _request_id => Str


=cut

1;