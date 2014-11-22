
package Paws::Config::GetResourceConfigHistoryResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has configurationItems => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigurationItem]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;