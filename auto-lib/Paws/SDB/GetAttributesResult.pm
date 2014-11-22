
package Paws::SDB::GetAttributesResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SDB::Attribute]');

}
1;