
package Aws::SDB::ListDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;