
package Paws::AlexaForBusiness::GetSkillGroupResponse;
  use Moose;
  has SkillGroup => (is => 'ro', isa => 'Paws::AlexaForBusiness::SkillGroup');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::GetSkillGroupResponse

=head1 ATTRIBUTES


=head2 SkillGroup => L<Paws::AlexaForBusiness::SkillGroup>

The details of the skill group requested. Required.


=head2 _request_id => Str


=cut

1;