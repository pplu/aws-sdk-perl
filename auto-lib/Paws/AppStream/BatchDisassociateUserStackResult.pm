
package Paws::AppStream::BatchDisassociateUserStackResult;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::UserStackAssociationError]', traits => ['NameInRequest'], request_name => 'errors' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::BatchDisassociateUserStackResult

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::AppStream::UserStackAssociationError>]

The list of UserStackAssociationError objects.


=head2 _request_id => Str


=cut

1;