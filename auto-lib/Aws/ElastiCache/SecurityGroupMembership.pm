package Aws::ElastiCache::SecurityGroupMembership {
  use Moose;
  with ('AWS::API::ResultParser');
  has SecurityGroupId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
}
1
