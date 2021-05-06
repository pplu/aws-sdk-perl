
package Paws::Backup::DescribeCopyJobOutput;
  use Moose;
  has CopyJob => (is => 'ro', isa => 'Paws::Backup::CopyJob');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeCopyJobOutput

=head1 ATTRIBUTES


=head2 CopyJob => L<Paws::Backup::CopyJob>

Contains detailed information about a copy job.


=head2 _request_id => Str


=cut

