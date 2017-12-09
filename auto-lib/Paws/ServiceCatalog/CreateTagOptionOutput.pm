
package Paws::ServiceCatalog::CreateTagOptionOutput;
  use Moose;
  has TagOptionDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::TagOptionDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateTagOptionOutput

=head1 ATTRIBUTES


=head2 TagOptionDetail => L<Paws::ServiceCatalog::TagOptionDetail>

Information about the TagOption.


=head2 _request_id => Str


=cut

1;