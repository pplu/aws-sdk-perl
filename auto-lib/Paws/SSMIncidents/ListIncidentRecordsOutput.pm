
package Paws::SSMIncidents::ListIncidentRecordsOutput;
  use Moose;
  has IncidentRecordSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::IncidentRecordSummary]', traits => ['NameInRequest'], request_name => 'incidentRecordSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::ListIncidentRecordsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IncidentRecordSummaries => ArrayRef[L<Paws::SSMIncidents::IncidentRecordSummary>]

The details of each listed incident record.


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 _request_id => Str


=cut

