
package Paws::Config::DescribeConfigurationRecorderStatusResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has ConfigurationRecordersStatus => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationRecorderStatus]');

}
1;