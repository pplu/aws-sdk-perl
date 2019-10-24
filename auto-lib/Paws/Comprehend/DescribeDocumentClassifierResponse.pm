# Generated from json/callresult_class.tt

package Paws::Comprehend::DescribeDocumentClassifierResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_DocumentClassifierProperties/;
  has DocumentClassifierProperties => (is => 'ro', isa => Comprehend_DocumentClassifierProperties);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DocumentClassifierProperties' => {
                                                   'class' => 'Paws::Comprehend::DocumentClassifierProperties',
                                                   'type' => 'Comprehend_DocumentClassifierProperties'
                                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeDocumentClassifierResponse

=head1 ATTRIBUTES


=head2 DocumentClassifierProperties => Comprehend_DocumentClassifierProperties

An object that contains the properties associated with a document
classifier.


=head2 _request_id => Str


=cut

1;