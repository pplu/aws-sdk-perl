
package Paws::StorageGateway::CreateTapePoolOutput;
  use Moose;
  has PoolARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateTapePoolOutput

=head1 ATTRIBUTES


=head2 PoolARN => Str

The unique Amazon Resource Name (ARN) that represents the custom tape
pool. Use the ListTapePools operation to return a list of tape pools
for your account and AWS Region.


=head2 _request_id => Str


=cut

1;