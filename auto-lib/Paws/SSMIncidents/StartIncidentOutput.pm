
package Paws::SSMIncidents::StartIncidentOutput;
  use Moose;
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentRecordArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::StartIncidentOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> IncidentRecordArn => Str

The ARN of the newly created incident record.


=head2 _request_id => Str


=cut

