
package Paws::Connect::ListInstanceStorageConfigsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StorageConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Connect::InstanceStorageConfig]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListInstanceStorageConfigsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 StorageConfigs => ArrayRef[L<Paws::Connect::InstanceStorageConfig>]

A valid storage type.


=head2 _request_id => Str


=cut

