
package Paws::SageMaker::ListImageVersionsResponse;
  use Moose;
  has ImageVersions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ImageVersion]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListImageVersionsResponse

=head1 ATTRIBUTES


=head2 ImageVersions => ArrayRef[L<Paws::SageMaker::ImageVersion>]

A list of versions and their properties.


=head2 NextToken => Str

A token for getting the next set of versions, if there are any.


=head2 _request_id => Str


=cut

1;