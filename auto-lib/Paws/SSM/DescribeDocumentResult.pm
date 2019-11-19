# Generated from json/callresult_class.tt

package Paws::SSM::DescribeDocumentResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_DocumentDescription/;
  has Document => (is => 'ro', isa => SSM_DocumentDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Document' => {
                               'type' => 'SSM_DocumentDescription',
                               'class' => 'Paws::SSM::DocumentDescription'
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

Paws::SSM::DescribeDocumentResult

=head1 ATTRIBUTES


=head2 Document => SSM_DocumentDescription

Information about the Systems Manager document.


=head2 _request_id => Str


=cut

1;