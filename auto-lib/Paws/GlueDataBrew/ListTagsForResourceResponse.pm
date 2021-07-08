
package Paws::GlueDataBrew::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::GlueDataBrew::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::GlueDataBrew::TagMap>

A list of tags associated with the DataBrew resource.


=head2 _request_id => Str


=cut

