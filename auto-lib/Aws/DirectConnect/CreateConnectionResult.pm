
package Aws::DirectConnect::CreateConnectionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has bandwidth => (is => 'ro', isa => 'Str');
  has connectionId => (is => 'ro', isa => 'Str');
  has connectionName => (is => 'ro', isa => 'Str');
  has connectionState => (is => 'ro', isa => 'Str');
  has location => (is => 'ro', isa => 'Str');
  has ownerAccount => (is => 'ro', isa => 'Str');
  has partnerName => (is => 'ro', isa => 'Str');
  has region => (is => 'ro', isa => 'Str');
  has vlan => (is => 'ro', isa => 'Int');

}
1;
