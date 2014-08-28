
package Aws::SDB::SelectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Item]', traits => ['Unwrapped'], xmlname => 'Item');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;