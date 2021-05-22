
package Paws::LookoutVision::StopModelResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::StopModelResponse

=head1 ATTRIBUTES


=head2 Status => Str

The status of the model.

Valid values are: C<"STARTING_HOSTING">, C<"HOSTED">, C<"HOSTING_FAILED">, C<"STOPPING_HOSTING">, C<"SYSTEM_UPDATING">
=head2 _request_id => Str


=cut

