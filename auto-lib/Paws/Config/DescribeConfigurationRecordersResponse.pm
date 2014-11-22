
package Paws::Config::DescribeConfigurationRecordersResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ConfigurationRecorders => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationRecorder]');

}
1;