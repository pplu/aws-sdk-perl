# Generated from json/callresult_class.tt

package Paws::Textract::StartDocumentTextDetectionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Textract::Types qw//;
  has JobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Textract::StartDocumentTextDetectionResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier for the document text-detection job. Use C<JobId> to
identify the job in a subsequent call to C<GetDocumentTextDetection>.


=head2 _request_id => Str


=cut

1;