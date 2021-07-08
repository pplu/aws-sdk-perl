
package Paws::SNS::GetSMSSandboxAccountStatusResult;
  use Moose;
  has IsInSandbox => (is => 'ro', isa => 'Bool', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetSMSSandboxAccountStatusResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsInSandbox => Bool

Indicates whether the calling account is in the SMS sandbox.


=head2 _request_id => Str


=cut

