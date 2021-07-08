
package Paws::LookoutVision::ListModelsResponse;
  use Moose;
  has Models => (is => 'ro', isa => 'ArrayRef[Paws::LookoutVision::ModelMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::ListModelsResponse

=head1 ATTRIBUTES


=head2 Models => ArrayRef[L<Paws::LookoutVision::ModelMetadata>]

A list of model versions in the specified project.


=head2 NextToken => Str

If the response is truncated, Amazon Lookout for Vision returns this
token that you can use in the subsequent request to retrieve the next
set of models.


=head2 _request_id => Str


=cut

