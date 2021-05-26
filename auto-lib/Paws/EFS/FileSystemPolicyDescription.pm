
package Paws::EFS::FileSystemPolicyDescription;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::FileSystemPolicyDescription

=head1 ATTRIBUTES


=head2 FileSystemId => Str

Specifies the EFS file system to which the C<FileSystemPolicy> applies.


=head2 Policy => Str

The JSON formatted C<FileSystemPolicy> for the EFS file system.


=head2 _request_id => Str


=cut

