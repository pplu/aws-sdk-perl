
package Paws::SavingsPlans::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::SavingsPlans::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::SavingsPlans::TagMap>

Information about the tags.


=head2 _request_id => Str


=cut

