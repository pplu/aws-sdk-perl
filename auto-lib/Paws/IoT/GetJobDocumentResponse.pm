
package Paws::IoT::GetJobDocumentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has Document => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Document' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Document' => 'document'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetJobDocumentResponse

=head1 ATTRIBUTES


=head2 Document => Str

The job document content.


=head2 _request_id => Str


=cut

