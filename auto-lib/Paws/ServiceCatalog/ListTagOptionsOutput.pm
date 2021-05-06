
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

The page token for the next set of results. To retrieve the first set
of results, use null.


=head2 TagOptionDetails => ArrayRef[L<Paws::ServiceCatalog::TagOptionDetail>]

Information about the TagOptions.


=head2 _request_id => Str


=cut

1;