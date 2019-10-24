# Generated from json/callresult_class.tt

package Paws::Comprehend::ListDocumentClassifiersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_DocumentClassifierProperties/;
  has DocumentClassifierPropertiesList => (is => 'ro', isa => ArrayRef[Comprehend_DocumentClassifierProperties]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DocumentClassifierPropertiesList' => {
                                                       'class' => 'Paws::Comprehend::DocumentClassifierProperties',
                                                       'type' => 'ArrayRef[Comprehend_DocumentClassifierProperties]'
                                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDocumentClassifiersResponse

=head1 ATTRIBUTES


=head2 DocumentClassifierPropertiesList => ArrayRef[Comprehend_DocumentClassifierProperties]

A list containing the properties of each job returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;