
package Paws::Greengrass::ListDeviceDefinitionVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::VersionInformation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListDeviceDefinitionVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 Versions => ArrayRef[L<Paws::Greengrass::VersionInformation>]

Information about a version.


=head2 _request_id => Str


=cut

