
package Paws::ServiceCatalog::CopyProductOutput;
  use Moose;
  has CopyProductToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CopyProductOutput

=head1 ATTRIBUTES


=head2 CopyProductToken => Str

The token to use to track the progress of the operation.


=head2 _request_id => Str


=cut

1;