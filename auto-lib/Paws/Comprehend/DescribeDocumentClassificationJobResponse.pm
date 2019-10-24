# Generated from json/callresult_class.tt

package Paws::Comprehend::DescribeDocumentClassificationJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_DocumentClassificationJobProperties/;
  has DocumentClassificationJobProperties => (is => 'ro', isa => Comprehend_DocumentClassificationJobProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DocumentClassificationJobProperties' => {
                                                          'class' => 'Paws::Comprehend::DocumentClassificationJobProperties',
                                                          'type' => 'Comprehend_DocumentClassificationJobProperties'
                                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeDocumentClassificationJobResponse

=head1 ATTRIBUTES


=head2 DocumentClassificationJobProperties => Comprehend_DocumentClassificationJobProperties

An object that describes the properties associated with the document
classification job.


=head2 _request_id => Str


=cut

1;