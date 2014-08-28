
package Aws::SDB::DomainMetadataResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AttributeNameCount => (is => 'ro', isa => 'Int');
  has AttributeNamesSizeBytes => (is => 'ro', isa => 'Num');
  has AttributeValueCount => (is => 'ro', isa => 'Int');
  has AttributeValuesSizeBytes => (is => 'ro', isa => 'Num');
  has ItemCount => (is => 'ro', isa => 'Int');
  has ItemNamesSizeBytes => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Int');

}
1;