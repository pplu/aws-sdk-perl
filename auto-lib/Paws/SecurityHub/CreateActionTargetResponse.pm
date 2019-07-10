
package Paws::SecurityHub::CreateActionTargetResponse;
  use Moose;
  has ActionTargetArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CreateActionTargetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTargetArn => Str

The ARN for the custom action target.


=head2 _request_id => Str


=cut

