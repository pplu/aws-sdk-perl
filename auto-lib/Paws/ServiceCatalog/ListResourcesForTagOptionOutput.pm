
package Paws::ServiceCatalog::ListResourcesForTagOptionOutput;
  use Moose;
  has PageToken => (is => 'ro', isa => 'Str');
  has ResourceDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ResourceDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListResourcesForTagOptionOutput

=head1 ATTRIBUTES


=head2 PageToken => Str

The page token of the first page retrieved. If null, this retrieves the
first page of size C<PageSize>.


=head2 ResourceDetails => ArrayRef[L<Paws::ServiceCatalog::ResourceDetail>]

The resulting detailed resource information.


=head2 _request_id => Str


=cut

1;