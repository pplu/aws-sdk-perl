package Paws::ES::ElasticsearchDomainConfig;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Paws::ES::AccessPoliciesStatus');
  has AdvancedOptions => (is => 'ro', isa => 'Paws::ES::AdvancedOptionsStatus');
  has EBSOptions => (is => 'ro', isa => 'Paws::ES::EBSOptionsStatus');
  has ElasticsearchClusterConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchClusterConfigStatus');
  has SnapshotOptions => (is => 'ro', isa => 'Paws::ES::SnapshotOptionsStatus');
1;
