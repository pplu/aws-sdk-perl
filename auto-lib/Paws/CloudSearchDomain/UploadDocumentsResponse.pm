
package Paws::CloudSearchDomain::UploadDocumentsResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::CloudSearchDomain::Types qw/CloudSearchDomain_DocumentServiceWarning/;
  has Adds => (is => 'ro', isa => Int);
  has Deletes => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);
  has Warnings => (is => 'ro', isa => ArrayRef[CloudSearchDomain_DocumentServiceWarning]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Adds' => {
                           'type' => 'Int'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Warnings' => {
                               'class' => 'Paws::CloudSearchDomain::DocumentServiceWarning',
                               'type' => 'ArrayRef[CloudSearchDomain_DocumentServiceWarning]'
                             },
               'Deletes' => {
                              'type' => 'Int'
                            }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Adds' => 'adds',
                       'Warnings' => 'warnings',
                       'Deletes' => 'deletes'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::UploadDocumentsResponse

=head1 ATTRIBUTES


=head2 Adds => Int

The number of documents that were added to the search domain.


=head2 Deletes => Int

The number of documents that were deleted from the search domain.


=head2 Status => Str

The status of an C<UploadDocumentsRequest>.


=head2 Warnings => ArrayRef[CloudSearchDomain_DocumentServiceWarning]

Any warnings returned by the document service about the documents being
uploaded.


=head2 _request_id => Str


=cut

