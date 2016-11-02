
package Paws::DS::GetDirectoryLimitsResult;
  use Moose;
  has DirectoryLimits => (is => 'ro', isa => 'Paws::DS::DirectoryLimits');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::GetDirectoryLimitsResult

=head1 ATTRIBUTES


=head2 DirectoryLimits => L<Paws::DS::DirectoryLimits>

A DirectoryLimits object that contains the directory limits for the
current region.


=head2 _request_id => Str


=cut

1;