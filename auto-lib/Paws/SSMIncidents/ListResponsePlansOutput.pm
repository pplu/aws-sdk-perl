
package Paws::SSMIncidents::ListResponsePlansOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResponsePlanSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::ResponsePlanSummary]', traits => ['NameInRequest'], request_name => 'responsePlanSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListResponsePlansOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 B<REQUIRED> ResponsePlanSummaries => ArrayRef[L<Paws::SSMIncidents::ResponsePlanSummary>]

Details of each response plan.


=head2 _request_id => Str


=cut

