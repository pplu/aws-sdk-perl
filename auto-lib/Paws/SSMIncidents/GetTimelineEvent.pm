
package Paws::SSMIncidents::GetTimelineEvent;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'eventId', required => 1);
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'incidentRecordArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTimelineEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getTimelineEvent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::GetTimelineEventOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::GetTimelineEvent - Arguments for method GetTimelineEvent on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTimelineEvent on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method GetTimelineEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTimelineEvent.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $GetTimelineEventOutput = $ssm -incidents->GetTimelineEvent(
      EventId           => 'MyUUID',
      IncidentRecordArn => 'MyArn',

    );

    # Results:
    my $Event = $GetTimelineEventOutput->Event;

    # Returns a L<Paws::SSMIncidents::GetTimelineEventOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/GetTimelineEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventId => Str

The ID of the event. You can get an event's ID when you create it or by
using C<ListTimelineEvents>.



=head2 B<REQUIRED> IncidentRecordArn => Str

The Amazon Resource Name (ARN) of the incident that the timeline event
is part of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTimelineEvent in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

