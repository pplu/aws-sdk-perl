
package Paws::AlexaForBusiness::ListSkillsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SkillSummaries => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::SkillSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListSkillsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token returned to indicate that there is more data available.


=head2 SkillSummaries => ArrayRef[L<Paws::AlexaForBusiness::SkillSummary>]

The list of enabled skills requested. Required.


=head2 _request_id => Str


=cut

1;