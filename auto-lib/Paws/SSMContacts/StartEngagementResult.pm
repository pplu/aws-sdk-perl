
package Paws::SSMContacts::StartEngagementResult;
  use Moose;
  has EngagementArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::StartEngagementResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> EngagementArn => Str

The ARN of the engagement.


=head2 _request_id => Str


=cut

1;