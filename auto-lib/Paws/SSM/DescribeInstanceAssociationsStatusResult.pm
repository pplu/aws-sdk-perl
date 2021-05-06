
package Paws::SSM::DescribeInstanceAssociationsStatusResult;
  use Moose;
  has InstanceAssociationStatusInfos => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstanceAssociationStatusInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstanceAssociationsStatusResult

=head1 ATTRIBUTES


=head2 InstanceAssociationStatusInfos => ArrayRef[L<Paws::SSM::InstanceAssociationStatusInfo>]

Status information about the association.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;