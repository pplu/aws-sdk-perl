
package Paws::MobileHub::DeleteProjectResult;
  use Moose;
  has DeletedResources => (is => 'ro', isa => 'ArrayRef[Paws::MobileHub::Resource]', traits => ['NameInRequest'], request_name => 'deletedResources');
  has OrphanedResources => (is => 'ro', isa => 'ArrayRef[Paws::MobileHub::Resource]', traits => ['NameInRequest'], request_name => 'orphanedResources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::DeleteProjectResult

=head1 ATTRIBUTES


=head2 DeletedResources => ArrayRef[L<Paws::MobileHub::Resource>]

Resources which were deleted.


=head2 OrphanedResources => ArrayRef[L<Paws::MobileHub::Resource>]

Resources which were not deleted, due to a risk of losing potentially
important data or files.


=head2 _request_id => Str


=cut

