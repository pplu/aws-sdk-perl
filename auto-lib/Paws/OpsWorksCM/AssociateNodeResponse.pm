
package Paws::OpsWorksCM::AssociateNodeResponse;
  use Moose;
  has NodeAssociationStatusToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::AssociateNodeResponse

=head1 ATTRIBUTES


=head2 NodeAssociationStatusToken => Str

Contains a token which can be passed to the
C<DescribeNodeAssociationStatus> API call to get the status of the
association request.


=head2 _request_id => Str


=cut

1;