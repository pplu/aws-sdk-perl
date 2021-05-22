
package Paws::AppRunner::DeleteAutoScalingConfigurationResponse;
  use Moose;
  has AutoScalingConfiguration => (is => 'ro', isa => 'Paws::AppRunner::AutoScalingConfiguration', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DeleteAutoScalingConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingConfiguration => L<Paws::AppRunner::AutoScalingConfiguration>

A description of the App Runner auto scaling configuration that this
request just deleted.


=head2 _request_id => Str


=cut

1;