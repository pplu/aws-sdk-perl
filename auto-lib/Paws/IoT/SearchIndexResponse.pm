
package Paws::IoT::SearchIndexResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ThingGroups => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ThingGroupDocument]', traits => ['NameInRequest'], request_name => 'thingGroups');
  has Things => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ThingDocument]', traits => ['NameInRequest'], request_name => 'things');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SearchIndexResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 ThingGroups => ArrayRef[L<Paws::IoT::ThingGroupDocument>]

The thing groups that match the search query.


=head2 Things => ArrayRef[L<Paws::IoT::ThingDocument>]

The things that match the search query.


=head2 _request_id => Str


=cut

