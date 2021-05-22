
package Paws::SSMIncidents::StartIncident;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Impact => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'impact');
  has RelatedItems => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::RelatedItem]', traits => ['NameInRequest'], request_name => 'relatedItems');
  has ResponsePlanArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'responsePlanArn', required => 1);
  has Title => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'title');
  has TriggerDetails => (is => 'ro', isa => 'Paws::SSMIncidents::TriggerDetails', traits => ['NameInRequest'], request_name => 'triggerDetails');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartIncident');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/startIncident');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::StartIncidentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::StartIncident - Arguments for method StartIncident on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartIncident on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method StartIncident.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartIncident.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $StartIncidentOutput = $ssm -incidents->StartIncident(
      ResponsePlanArn => 'MyArn',
      ClientToken     => 'MyClientToken',    # OPTIONAL
      Impact          => 1,                  # OPTIONAL
      RelatedItems    => [
        {
          Identifier => {
            Type => 'ANALYSIS'
            ,    # values: ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER
            Value => {
              Arn              => 'MyArn',                 # max: 1000
              MetricDefinition => 'MyMetricDefinition',    # max: 4000; OPTIONAL
              Url              => 'MyUrl',                 # max: 1000; OPTIONAL
            },

          },
          Title => 'MyRelatedItemTitleString',             # max: 200; OPTIONAL
        },
        ...
      ],                                                   # OPTIONAL
      Title          => 'MyIncidentTitle',                 # OPTIONAL
      TriggerDetails => {
        Source     => 'MyIncidentSource',                  # max: 50
        Timestamp  => '1970-01-01T01:00:00',
        RawData    => 'MyRawData',                         # max: 4000; OPTIONAL
        TriggerArn => 'MyArn',                             # max: 1000
      },    # OPTIONAL
    );

    # Results:
    my $IncidentRecordArn = $StartIncidentOutput->IncidentRecordArn;

    # Returns a L<Paws::SSMIncidents::StartIncidentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/StartIncident>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token ensuring that the action is called only once with the specified
details.



=head2 Impact => Int

Defines the impact to the customers. Providing an impact overwrites the
impact provided by a response plan.

B<Possible impacts:>

=over

=item *

C<1> - Critical impact, this typically relates to full application
failure that impacts many to all customers.

=item *

C<2> - High impact, partial application failure with impact to many
customers.

=item *

C<3> - Medium impact, the application is providing reduced service to
customers.

=item *

C<4> - Low impact, customer might aren't impacted by the problem yet.

=item *

C<5> - No impact, customers aren't currently impacted but urgent action
is needed to avoid impact.

=back




=head2 RelatedItems => ArrayRef[L<Paws::SSMIncidents::RelatedItem>]

Add related items to the incident for other responders to use. Related
items are AWS resources, external links, or files uploaded to an S3
bucket.



=head2 B<REQUIRED> ResponsePlanArn => Str

The Amazon Resource Name (ARN) of the response plan that pre-defines
summary, chat channels, SNS topics, runbooks, title, and impact of the
incident.



=head2 Title => Str

Provide a title for the incident. Providing a title overwrites the
title provided by the response plan.



=head2 TriggerDetails => L<Paws::SSMIncidents::TriggerDetails>

Details of what created the incident record in Incident Manager.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartIncident in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

