
package Paws::SSMContacts::GetContactPolicyResult;
  use Moose;
  has ContactArn => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::GetContactPolicyResult

=head1 ATTRIBUTES


=head2 ContactArn => Str

The ARN of the contact or escalation plan.


=head2 Policy => Str

Details about the resource policy attached to the contact or escalation
plan.


=head2 _request_id => Str


=cut

1;