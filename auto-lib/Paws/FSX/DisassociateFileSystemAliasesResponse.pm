
package Paws::FSX::DisassociateFileSystemAliasesResponse;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Alias]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DisassociateFileSystemAliasesResponse

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[L<Paws::FSX::Alias>]

An array of one or more DNS aliases that Amazon FSx is attempting to
disassociate from the file system.


=head2 _request_id => Str


=cut

1;