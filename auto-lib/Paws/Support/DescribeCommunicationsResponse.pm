
package Paws::Support::DescribeCommunicationsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has communications => (is => 'ro', isa => 'ArrayRef[Paws::Support::Communication]');
  has nextToken => (is => 'ro', isa => 'Str');

}
1;