
package Paws::WorkDocs::DescribeDocumentVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkDocs::Types qw/WorkDocs_DocumentVersionMetadata/;
  has DocumentVersions => (is => 'ro', isa => ArrayRef[WorkDocs_DocumentVersionMetadata]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DocumentVersions' => {
                                       'class' => 'Paws::WorkDocs::DocumentVersionMetadata',
                                       'type' => 'ArrayRef[WorkDocs_DocumentVersionMetadata]'
                                     },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeDocumentVersionsResponse

=head1 ATTRIBUTES


=head2 DocumentVersions => ArrayRef[WorkDocs_DocumentVersionMetadata]

The document versions.


=head2 Marker => Str

The marker to use when requesting the next set of results. If there are
no additional results, the string is empty.


=head2 _request_id => Str


=cut

