
package Paws::CloudSearchDomain::UploadDocumentsResponse;
  use Moose;
  has Adds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'adds');
  has Deletes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'deletes');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearchDomain::DocumentServiceWarning]', traits => ['NameInRequest'], request_name => 'warnings');

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 Warnings => ArrayRef[L<Paws::CloudSearchDomain::DocumentServiceWarning>]

Any warnings returned by the document service about the documents being
uploaded.


=head2 _request_id => Str


=cut

