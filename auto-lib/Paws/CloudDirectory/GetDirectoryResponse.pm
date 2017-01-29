
package Paws::CloudDirectory::GetDirectoryResponse;
  use Moose;
  has Directory => (is => 'ro', isa => 'Paws::CloudDirectory::Directory', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetDirectoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Directory => L<Paws::CloudDirectory::Directory>

Metadata about the directory.


=head2 _request_id => Str


=cut

