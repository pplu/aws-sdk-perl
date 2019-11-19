# Generated from json/callresult_class.tt

package Paws::Comprehend::ListDocumentClassificationJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_DocumentClassificationJobProperties/;
  has DocumentClassificationJobPropertiesList => (is => 'ro', isa => ArrayRef[Comprehend_DocumentClassificationJobProperties]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DocumentClassificationJobPropertiesList' => {
                                                              'class' => 'Paws::Comprehend::DocumentClassificationJobProperties',
                                                              'type' => 'ArrayRef[Comprehend_DocumentClassificationJobProperties]'
                                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDocumentClassificationJobsResponse

=head1 ATTRIBUTES


=head2 DocumentClassificationJobPropertiesList => ArrayRef[Comprehend_DocumentClassificationJobProperties]

A list containing the properties of each job returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;