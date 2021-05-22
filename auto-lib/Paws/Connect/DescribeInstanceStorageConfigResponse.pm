
package Paws::Connect::DescribeInstanceStorageConfigResponse;
  use Moose;
  has StorageConfig => (is => 'ro', isa => 'Paws::Connect::InstanceStorageConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DescribeInstanceStorageConfigResponse

=head1 ATTRIBUTES


=head2 StorageConfig => L<Paws::Connect::InstanceStorageConfig>

A valid storage type.


=head2 _request_id => Str


=cut

