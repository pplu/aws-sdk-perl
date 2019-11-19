# Generated from json/callresult_class.tt

package Paws::IoTThingsGraph::UploadEntityDefinitionsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has UploadId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'UploadId' => 1
                  },
  'NameInRequest' => {
                       'UploadId' => 'uploadId'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UploadId' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


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