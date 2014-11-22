
package Paws::SDB::SelectResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SDB::Item]');
  has NextToken => (is => 'ro', isa => 'Str');

}
1;