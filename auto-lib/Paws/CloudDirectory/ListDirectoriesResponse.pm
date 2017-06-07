
package Paws::CloudDirectory::ListDirectoriesResponse;
  use Moose;
  has Directories => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::Directory]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListDirectoriesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Directories => ArrayRef[L<Paws::CloudDirectory::Directory>]

Lists all directories that are associated with your account in
pagination fashion.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

