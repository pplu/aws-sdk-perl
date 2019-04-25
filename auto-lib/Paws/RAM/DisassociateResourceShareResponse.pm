
package Paws::RAM::DisassociateResourceShareResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ResourceShareAssociations => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ResourceShareAssociation]', traits => ['NameInRequest'], request_name => 'resourceShareAssociations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::DisassociateResourceShareResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 ResourceShareAssociations => ArrayRef[L<Paws::RAM::ResourceShareAssociation>]

Information about the associations.


=head2 _request_id => Str


=cut

