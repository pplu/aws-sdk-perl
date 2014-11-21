
package Aws::OpsWorks::DescribeRaidArraysResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has RaidArrays => (is => 'ro', isa => 'ArrayRef[Aws::OpsWorks::RaidArray]');

}
1;