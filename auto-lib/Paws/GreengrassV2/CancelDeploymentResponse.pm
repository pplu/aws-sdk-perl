
package Paws::GreengrassV2::CancelDeploymentResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::CancelDeploymentResponse

=head1 ATTRIBUTES


=head2 Message => Str

A message that communicates if the cancel was successful.


=head2 _request_id => Str


=cut

