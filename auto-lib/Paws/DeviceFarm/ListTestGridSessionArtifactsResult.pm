
package Paws::DeviceFarm::ListTestGridSessionArtifactsResult;
  use Moose;
  has Artifacts => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::TestGridSessionArtifact]', traits => ['NameInRequest'], request_name => 'artifacts' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTestGridSessionArtifactsResult

=head1 ATTRIBUTES


=head2 Artifacts => ArrayRef[L<Paws::DeviceFarm::TestGridSessionArtifact>]

A list of test grid session artifacts for a TestGridSession.


=head2 NextToken => Str

Pagination token.


=head2 _request_id => Str


=cut

1;