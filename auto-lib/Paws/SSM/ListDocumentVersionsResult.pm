# Generated from json/callresult_class.tt

package Paws::SSM::ListDocumentVersionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_DocumentVersionInfo/;
  has DocumentVersions => (is => 'ro', isa => ArrayRef[SSM_DocumentVersionInfo]);
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
               'DocumentVersions' => {
                                       'class' => 'Paws::SSM::DocumentVersionInfo',
                                       'type' => 'ArrayRef[SSM_DocumentVersionInfo]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListDocumentVersionsResult

=head1 ATTRIBUTES


=head2 DocumentVersions => ArrayRef[SSM_DocumentVersionInfo]

The document versions.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;