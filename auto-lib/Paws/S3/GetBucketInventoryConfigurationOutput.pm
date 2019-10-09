
package Paws::S3::GetBucketInventoryConfigurationOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_InventoryConfiguration/;
  has InventoryConfiguration => (is => 'ro', isa => S3_InventoryConfiguration);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'InventoryConfiguration');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InventoryConfiguration' => {
                                             'class' => 'Paws::S3::InventoryConfiguration',
                                             'type' => 'S3_InventoryConfiguration'
                                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketInventoryConfigurationOutput

=head1 ATTRIBUTES


=head2 InventoryConfiguration => S3_InventoryConfiguration

Specifies the inventory configuration.




=cut

