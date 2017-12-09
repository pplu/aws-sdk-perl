
package Paws::ServiceCatalog::DescribeCopyProductStatusOutput;
  use Moose;
  has CopyProductStatus => (is => 'ro', isa => 'Str');
  has StatusDetail => (is => 'ro', isa => 'Str');
  has TargetProductId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeCopyProductStatusOutput

=head1 ATTRIBUTES


=head2 CopyProductStatus => Str

The status of the copy product operation.

Valid values are: C<"SUCCEEDED">, C<"IN_PROGRESS">, C<"FAILED">
=head2 StatusDetail => Str

The status message.


=head2 TargetProductId => Str

The identifier of the copied product.


=head2 _request_id => Str


=cut

1;