
package Aws::SDB::GetAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]', traits => ['Unwrapped'], xmlname => 'Attribute');

}
1;