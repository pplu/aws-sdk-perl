
package Paws::AlexaForBusiness::SearchSkillGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SkillGroups => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::SkillGroupData]');
  has TotalCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchSkillGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 SkillGroups => ArrayRef[L<Paws::AlexaForBusiness::SkillGroupData>]

The skill groups that meet the filter criteria, in sort order.


=head2 TotalCount => Int

The total number of skill groups returned.


=head2 _request_id => Str


=cut

1;