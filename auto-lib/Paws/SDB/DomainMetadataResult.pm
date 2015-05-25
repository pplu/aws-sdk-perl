
package Paws::SDB::DomainMetadataResult {
  use Moose;
  has AttributeNameCount => (is => 'ro', isa => 'Int');
  has AttributeNamesSizeBytes => (is => 'ro', isa => 'Num');
  has AttributeValueCount => (is => 'ro', isa => 'Int');
  has AttributeValuesSizeBytes => (is => 'ro', isa => 'Num');
  has ItemCount => (is => 'ro', isa => 'Int');
  has ItemNamesSizeBytes => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Int');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::DomainMetadataResult

=head1 ATTRIBUTES

=head2 AttributeNameCount => Int

  

The number of unique attribute names in the domain.









=head2 AttributeNamesSizeBytes => Num

  

The total size of all unique attribute names in the domain, in bytes.









=head2 AttributeValueCount => Int

  

The number of all attribute name/value pairs in the domain.









=head2 AttributeValuesSizeBytes => Num

  

The total size of all attribute values in the domain, in bytes.









=head2 ItemCount => Int

  

The number of all items in the domain.









=head2 ItemNamesSizeBytes => Num

  

The total size of all item names in the domain, in bytes.









=head2 Timestamp => Int

  

The data and time when metadata was calculated, in Epoch (UNIX)
seconds.











=cut

