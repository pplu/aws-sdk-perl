# Generated from json/callresult_class.tt

package Paws::Comprehend::CreateDocumentClassifierResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw//;
  has DocumentClassifierArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DocumentClassifierArn' => {
                                            'type' => 'Str'
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

Paws::Comprehend::CreateDocumentClassifierResponse

=head1 ATTRIBUTES


=head2 DocumentClassifierArn => Str

The Amazon Resource Name (ARN) that identifies the document classifier.


=head2 _request_id => Str


=cut

1;