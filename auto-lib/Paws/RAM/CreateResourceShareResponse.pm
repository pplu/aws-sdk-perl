
package Paws::RAM::CreateResourceShareResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ResourceShare => (is => 'ro', isa => 'Paws::RAM::ResourceShare', traits => ['NameInRequest'], request_name => 'resourceShare');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::CreateResourceShareResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 ResourceShare => L<Paws::RAM::ResourceShare>

Information about the resource share.


=head2 _request_id => Str


=cut

