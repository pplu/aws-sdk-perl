
package Paws::ServiceCatalog::ListTagOptionsOutput;
  use Moose;
  has PageToken => (is => 'ro', isa => 'Str');
  has TagOptionDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::TagOptionDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListTagOptionsOutput

=head1 ATTRIBUTES


=head2 PageToken => Str

The page token of the first page retrieved. If null, this retrieves the
first page of size C<PageSize>.


=head2 TagOptionDetails => ArrayRef[L<Paws::ServiceCatalog::TagOptionDetail>]

The resulting detailed TagOption information.


=head2 _request_id => Str


=cut

1;