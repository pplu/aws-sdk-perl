
package Paws::Snowball::GetJobUnlockCodeResult;
  use Moose;
  has UnlockCode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::GetJobUnlockCodeResult

=head1 ATTRIBUTES


=head2 UnlockCode => Str

The C<UnlockCode> value for the specified job. The C<UnlockCode> value
can be accessed for up to 90 days after the job has been created.


=head2 _request_id => Str


=cut

1;