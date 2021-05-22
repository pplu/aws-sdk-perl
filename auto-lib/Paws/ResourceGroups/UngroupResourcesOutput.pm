
package Paws::ResourceGroups::UngroupResourcesOutput;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::FailedResource]');
  has Pending => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::PendingResource]');
  has Succeeded => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::UngroupResourcesOutput

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[L<Paws::ResourceGroups::FailedResource>]

A list of any resources that failed to be removed from the group by
this operation.


=head2 Pending => ArrayRef[L<Paws::ResourceGroups::PendingResource>]

A list of any resources that are still in the process of being removed
from the group by this operation. These pending removals continue
asynchronously. You can check the status of pending removals by using
the C< ListGroupResources > operation. After the resource is
successfully removed, it no longer appears in the response.


=head2 Succeeded => ArrayRef[Str|Undef]

A list of resources that were successfully removed from the group by
this operation.


=head2 _request_id => Str


=cut

