
package Paws::WorkSpaces::MigrateWorkspaceResult;
  use Moose;
  has SourceWorkspaceId => (is => 'ro', isa => 'Str');
  has TargetWorkspaceId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::MigrateWorkspaceResult

=head1 ATTRIBUTES


=head2 SourceWorkspaceId => Str

The original identifier of the WorkSpace that is being migrated.


=head2 TargetWorkspaceId => Str

The new identifier of the WorkSpace that is being migrated. If the
migration does not succeed, the target WorkSpace ID will not be used,
and the WorkSpace will still have the original WorkSpace ID.


=head2 _request_id => Str


=cut

1;