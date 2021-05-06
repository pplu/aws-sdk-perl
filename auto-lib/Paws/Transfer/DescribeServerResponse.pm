
package Paws::Transfer::DescribeServerResponse;
  use Moose;
  has Server => (is => 'ro', isa => 'Paws::Transfer::DescribedServer', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeServerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Server => L<Paws::Transfer::DescribedServer>

An array containing the properties of the server with the C<ServerID>
you specified.


=head2 _request_id => Str


=cut

1;