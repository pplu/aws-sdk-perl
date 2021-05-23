
package Paws::IVS::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tags => (is => 'ro', isa => 'Paws::IVS::Tags', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more tags than C<maxResults>, use C<nextToken> in the
request to get the next set.


=head2 B<REQUIRED> Tags => L<Paws::IVS::Tags>




=head2 _request_id => Str


=cut

