
package Paws::ServiceCatalog::DescribeTagOptionOutput;
  use Moose;
  has TagOptionDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::TagOptionDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeTagOptionOutput

=head1 ATTRIBUTES


=head2 TagOptionDetail => L<Paws::ServiceCatalog::TagOptionDetail>

Information about the TagOption.


=head2 _request_id => Str


=cut

1;