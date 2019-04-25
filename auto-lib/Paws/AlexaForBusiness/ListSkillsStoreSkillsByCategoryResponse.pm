
package Paws::AlexaForBusiness::ListSkillsStoreSkillsByCategoryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SkillsStoreSkills => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::SkillsStoreSkill]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListSkillsStoreSkillsByCategoryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The tokens used for pagination.


=head2 SkillsStoreSkills => ArrayRef[L<Paws::AlexaForBusiness::SkillsStoreSkill>]

The skill store skills.


=head2 _request_id => Str


=cut

1;