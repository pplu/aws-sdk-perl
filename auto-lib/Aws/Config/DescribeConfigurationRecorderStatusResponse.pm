
package Aws::Config::DescribeConfigurationRecorderStatusResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConfigurationRecordersStatus => (is => 'ro', isa => 'ArrayRef[Aws::Config::ConfigurationRecorderStatus]');

}
1;