
package Paws::SSMIncidents::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::SSMIncidents::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::SSMIncidents::TagMap>

A list of tags for the response plan.


=head2 _request_id => Str


=cut

