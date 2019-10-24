
package Paws::Glacier::ListMultipartUploadsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glacier::Types qw/Glacier_UploadListElement/;
  has Marker => (is => 'ro', isa => Str);
  has UploadsList => (is => 'ro', isa => ArrayRef[Glacier_UploadListElement]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UploadsList' => {
                                  'class' => 'Paws::Glacier::UploadListElement',
                                  'type' => 'ArrayRef[Glacier_UploadListElement]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

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


=head2 UploadsList => ArrayRef[Glacier_UploadListElement]

A list of in-progress multipart uploads.


=head2 _request_id => Str


=cut

