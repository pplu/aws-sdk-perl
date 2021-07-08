
package Paws::Schemas::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Schemas::Tags>




=head2 _request_id => Str


=cut

