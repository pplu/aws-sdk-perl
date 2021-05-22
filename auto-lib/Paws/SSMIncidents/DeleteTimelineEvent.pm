
package Paws::SSMIncidents::DeleteTimelineEvent;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventId', required => 1);
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentRecordArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTimelineEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deleteTimelineEvent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::DeleteTimelineEventOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::DeleteTimelineEvent - Arguments for method DeleteTimelineEvent on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTimelineEvent on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method DeleteTimelineEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTimelineEvent.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $DeleteTimelineEventOutput = $ssm -incidents->DeleteTimelineEvent(
      EventId           => 'MyUUID',
      IncidentRecordArn => 'MyArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/DeleteTimelineEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventId => Str

The ID of the event you are updating. You can find this by using
C<ListTimelineEvents>.



=head2 B<REQUIRED> IncidentRecordArn => Str

The Amazon Resource Name (ARN) of the incident that the event is part
of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTimelineEvent in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

