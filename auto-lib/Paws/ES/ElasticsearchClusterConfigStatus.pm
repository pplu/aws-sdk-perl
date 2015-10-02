package Paws::ES::ElasticsearchClusterConfigStatus;
  use Moose;
  has Options => (is => 'ro', isa => 'Paws::ES::ElasticsearchClusterConfig', required => 1);
  has Status => (is => 'ro', isa => 'Paws::ES::OptionStatus', required => 1);
1;
