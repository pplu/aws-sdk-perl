
package Paws::AlexaForBusiness::CreateSkillGroupResponse;
  use Moose;
  has SkillGroupArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateSkillGroupResponse

=head1 ATTRIBUTES


=head2 SkillGroupArn => Str

The ARN of the newly created skill group in the response.


=head2 _request_id => Str


=cut

1;