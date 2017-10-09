
package Paws::SSM::ListComplianceItemsResult;
  use Moose;
  has ComplianceItems => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ComplianceItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListComplianceItemsResult

=head1 ATTRIBUTES


=head2 ComplianceItems => ArrayRef[L<Paws::SSM::ComplianceItem>]

A list of compliance information for the specified resource ID.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;