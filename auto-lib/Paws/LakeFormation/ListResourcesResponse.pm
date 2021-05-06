
package Paws::LakeFormation::ListResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceInfoList => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::ResourceInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve these
resources.


=head2 ResourceInfoList => ArrayRef[L<Paws::LakeFormation::ResourceInfo>]

A summary of the data lake resources.


=head2 _request_id => Str


=cut

1;