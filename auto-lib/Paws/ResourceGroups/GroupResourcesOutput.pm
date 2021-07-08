
package Paws::ResourceGroups::GroupResourcesOutput;
  use Moose;
  has Failed => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::FailedResource]');
  has Pending => (is => 'ro', isa => 'ArrayRef[Paws::ResourceGroups::PendingResource]');
  has Succeeded => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GroupResourcesOutput

=head1 ATTRIBUTES


=head2 Failed => ArrayRef[L<Paws::ResourceGroups::FailedResource>]

A list of ARNs of any resources that failed to be added to the group by
this operation.


=head2 Pending => ArrayRef[L<Paws::ResourceGroups::PendingResource>]

A list of ARNs of any resources that are still in the process of being
added to the group by this operation. These pending additions continue
asynchronously. You can check the status of pending additions by using
the C< ListGroupResources > operation, and checking the C<Resources>
array in the response and the C<Status> field of each object in that
array.


=head2 Succeeded => ArrayRef[Str|Undef]

A list of ARNs of resources that were successfully added to the group
by this operation.


=head2 _request_id => Str


=cut

