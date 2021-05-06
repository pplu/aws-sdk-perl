
package Paws::SSM::DescribeEffectiveInstanceAssociationsResult;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstanceAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeEffectiveInstanceAssociationsResult

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::SSM::InstanceAssociation>]

The associations for the requested instance.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;