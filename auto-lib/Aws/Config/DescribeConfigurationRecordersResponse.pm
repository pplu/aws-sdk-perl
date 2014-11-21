
package Aws::Config::DescribeConfigurationRecordersResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has ConfigurationRecorders => (is => 'ro', isa => 'ArrayRef[Aws::Config::ConfigurationRecorder]');

}
1;