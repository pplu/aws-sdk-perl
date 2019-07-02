
package Paws::SecurityHub::DeleteActionTargetResponse;
  use Moose;
  has ActionTargetArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeleteActionTargetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTargetArn => Str

The ARN of the custom action target that was deleted.


=head2 _request_id => Str


=cut

