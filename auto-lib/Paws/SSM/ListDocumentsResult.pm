# Generated from json/callresult_class.tt

package Paws::SSM::ListDocumentsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_DocumentIdentifier/;
  has DocumentIdentifiers => (is => 'ro', isa => ArrayRef[SSM_DocumentIdentifier]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DocumentIdentifiers' => {
                                          'class' => 'Paws::SSM::DocumentIdentifier',
                                          'type' => 'ArrayRef[SSM_DocumentIdentifier]'
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

Paws::SSM::ListDocumentsResult

=head1 ATTRIBUTES


=head2 DocumentIdentifiers => ArrayRef[SSM_DocumentIdentifier]

The names of the Systems Manager documents.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;