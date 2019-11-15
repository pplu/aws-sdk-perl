
package Paws::GuardDuty::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::GuardDuty::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::GuardDuty::TagMap>

The tags associated with the resource.


=head2 _request_id => Str


=cut

