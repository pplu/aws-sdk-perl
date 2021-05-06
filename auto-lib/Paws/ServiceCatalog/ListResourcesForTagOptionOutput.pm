
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

The page token for the next set of results. To retrieve the first set
of results, use null.


=head2 ResourceDetails => ArrayRef[L<Paws::ServiceCatalog::ResourceDetail>]

Information about the resources.


=head2 _request_id => Str


=cut

1;