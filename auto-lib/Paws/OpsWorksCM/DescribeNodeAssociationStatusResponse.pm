
package Paws::OpsWorksCM::DescribeNodeAssociationStatusResponse;
  use Moose;
  has EngineAttributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::EngineAttribute]');
  has NodeAssociationStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeNodeAssociationStatusResponse

=head1 ATTRIBUTES


=head2 EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

Attributes specific to the node association. In Puppet, the attibute
PUPPET_NODE_CERT contains the signed certificate (the result of the
CSR).


=head2 NodeAssociationStatus => Str

The status of the association or disassociation request.

B<Possible values:>

=over

=item *

C<SUCCESS>: The association or disassociation succeeded.

=item *

C<FAILED>: The association or disassociation failed.

=item *

C<IN_PROGRESS>: The association or disassociation is still in progress.

=back


Valid values are: C<"SUCCESS">, C<"FAILED">, C<"IN_PROGRESS">
=head2 _request_id => Str


=cut

1;