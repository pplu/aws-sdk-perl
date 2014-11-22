
package Paws::OpsWorks::DescribeRaidArraysResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has RaidArrays => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::RaidArray]');

}
1;