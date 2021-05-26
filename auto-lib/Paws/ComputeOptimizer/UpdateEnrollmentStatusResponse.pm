
package Paws::ComputeOptimizer::UpdateEnrollmentStatusResponse;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::UpdateEnrollmentStatusResponse

=head1 ATTRIBUTES


=head2 Status => Str

The enrollment status of the account.

Valid values are: C<"Active">, C<"Inactive">, C<"Pending">, C<"Failed">
=head2 StatusReason => Str

The reason for the enrollment status of the account. For example, an
account might show a status of C<Pending> because member accounts of an
organization require more time to be enrolled in the service.


=head2 _request_id => Str


=cut

1;