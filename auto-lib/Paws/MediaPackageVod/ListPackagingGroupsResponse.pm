
package Paws::MediaPackageVod::ListPackagingGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PackagingGroups => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageVod::PackagingGroup]', traits => ['NameInRequest'], request_name => 'packagingGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::ListPackagingGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that can be used to resume pagination from the end of the
collection.


=head2 PackagingGroups => ArrayRef[L<Paws::MediaPackageVod::PackagingGroup>]

A list of MediaPackage VOD PackagingGroup resources.


=head2 _request_id => Str


=cut

