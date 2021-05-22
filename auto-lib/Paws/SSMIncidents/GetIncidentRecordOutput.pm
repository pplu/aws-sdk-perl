
package Paws::SSMIncidents::GetIncidentRecordOutput;
  use Moose;
  has IncidentRecord => (is => 'ro', isa => 'Paws::SSMIncidents::IncidentRecord', traits => ['NameInRequest'], request_name => 'incidentRecord', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::GetIncidentRecordOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IncidentRecord => L<Paws::SSMIncidents::IncidentRecord>

Details structure of the incident record.


=head2 _request_id => Str


=cut

