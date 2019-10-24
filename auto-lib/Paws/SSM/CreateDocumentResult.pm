# Generated from json/callresult_class.tt

package Paws::SSM::CreateDocumentResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_DocumentDescription/;
  has DocumentDescription => (is => 'ro', isa => SSM_DocumentDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DocumentDescription' => {
                                          'class' => 'Paws::SSM::DocumentDescription',
                                          'type' => 'SSM_DocumentDescription'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateDocumentResult

=head1 ATTRIBUTES


=head2 DocumentDescription => SSM_DocumentDescription

Information about the Systems Manager document.


=head2 _request_id => Str


=cut

1;