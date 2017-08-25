
package Paws::SSM::ListResourceComplianceSummariesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceComplianceSummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ResourceComplianceSummaryItem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListResourceComplianceSummariesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 ResourceComplianceSummaryItems => ArrayRef[L<Paws::SSM::ResourceComplianceSummaryItem>]

A summary count for specified or targeted managed instances. Summary
count includes information about compliant and non-compliant State
Manager associations, patch status, or custom items according to the
filter criteria that you specify.


=head2 _request_id => Str


=cut

1;