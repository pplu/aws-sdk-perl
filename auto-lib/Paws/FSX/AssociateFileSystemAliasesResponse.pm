
package Paws::FSX::AssociateFileSystemAliasesResponse;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Alias]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::AssociateFileSystemAliasesResponse

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[L<Paws::FSX::Alias>]

An array of the DNS aliases that Amazon FSx is associating with the
file system.


=head2 _request_id => Str


=cut

1;