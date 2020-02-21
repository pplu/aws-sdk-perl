
package Paws::DeviceFarm::ListTestGridProjectsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has TestGridProjects => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::TestGridProject]', traits => ['NameInRequest'], request_name => 'testGridProjects' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTestGridProjectsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Used for pagination. Pass into ListTestGridProjects to get more results
in a paginated request.


=head2 TestGridProjects => ArrayRef[L<Paws::DeviceFarm::TestGridProject>]

The list of TestGridProjects, based on a ListTestGridProjectsRequest.


=head2 _request_id => Str


=cut

1;