
package Paws::S3::GetBucketInventoryConfigurationOutput;
  use Moose;
  has InventoryConfiguration => (is => 'ro', isa => 'Paws::S3::InventoryConfiguration');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'InventoryConfiguration');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketInventoryConfigurationOutput

=head1 ATTRIBUTES


=head2 InventoryConfiguration => L<Paws::S3::InventoryConfiguration>

Specifies the inventory configuration.




=cut

