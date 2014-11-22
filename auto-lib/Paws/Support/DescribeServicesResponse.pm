
package Paws::Support::DescribeServicesResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has services => (is => 'ro', isa => 'ArrayRef[Paws::Support::Service]');

}
1;