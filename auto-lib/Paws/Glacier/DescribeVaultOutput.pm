
package Paws::Glacier::DescribeVaultOutput;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has LastInventoryDate => (is => 'ro', isa => 'Str');
  has NumberOfArchives => (is => 'ro', isa => 'Int');
  has SizeInBytes => (is => 'ro', isa => 'Int');
  has VaultARN => (is => 'ro', isa => 'Str');
  has VaultName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::DescribeVaultOutput

=head1 ATTRIBUTES


=head2 CreationDate => Str

The Universal Coordinated Time (UTC) date when the vault was created.
This value should be a string in the ISO 8601 date format, for example
C<2012-03-20T17:03:43.221Z>.


=head2 LastInventoryDate => Str

The Universal Coordinated Time (UTC) date when Amazon Glacier completed
the last vault inventory. This value should be a string in the ISO 8601
date format, for example C<2012-03-20T17:03:43.221Z>.


=head2 NumberOfArchives => Int

The number of archives in the vault as of the last inventory date. This
field will return C<null> if an inventory has not yet run on the vault,
for example if you just created the vault.


=head2 SizeInBytes => Int

Total size, in bytes, of the archives in the vault as of the last
inventory date. This field will return null if an inventory has not yet
run on the vault, for example if you just created the vault.


=head2 VaultARN => Str

The Amazon Resource Name (ARN) of the vault.


=head2 VaultName => Str

The name of the vault.


=head2 _request_id => Str


=cut

