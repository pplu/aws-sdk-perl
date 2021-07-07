
package Paws::Transfer::DescribeAccessResponse;
  use Moose;
  has Access => (is => 'ro', isa => 'Paws::Transfer::DescribedAccess', required => 1);
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeAccessResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Access => L<Paws::Transfer::DescribedAccess>

The external ID of the server that the access is attached to.


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for a server that has this access
assigned.


=head2 _request_id => Str


=cut

1;