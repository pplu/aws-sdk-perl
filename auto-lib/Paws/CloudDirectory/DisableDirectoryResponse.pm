
package Paws::CloudDirectory::DisableDirectoryResponse;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DisableDirectoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory that has been disabled.


=head2 _request_id => Str


=cut

