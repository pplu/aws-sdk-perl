
package Paws::RAM::DeleteResourceShareResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ReturnValue => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'returnValue');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::DeleteResourceShareResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 ReturnValue => Bool

Indicates whether the request succeeded.


=head2 _request_id => Str


=cut

