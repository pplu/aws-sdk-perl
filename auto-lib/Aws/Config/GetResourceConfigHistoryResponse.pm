
package Aws::Config::GetResourceConfigHistoryResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has configurationItems => (is => 'ro', isa => 'ArrayRef[Aws::Config::ConfigurationItem]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;