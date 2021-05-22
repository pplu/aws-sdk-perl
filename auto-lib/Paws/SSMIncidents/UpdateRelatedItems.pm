
package Paws::SSMIncidents::UpdateRelatedItems;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has IncidentRecordArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentRecordArn', required => 1);
  has RelatedItemsUpdate => (is => 'ro', isa => 'Paws::SSMIncidents::RelatedItemsUpdate', traits => ['NameInRequest'], request_name => 'relatedItemsUpdate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRelatedItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateRelatedItems');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::UpdateRelatedItemsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::UpdateRelatedItems - Arguments for method UpdateRelatedItems on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRelatedItems on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method UpdateRelatedItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRelatedItems.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $UpdateRelatedItemsOutput = $ssm -incidents->UpdateRelatedItems(
      IncidentRecordArn  => 'MyArn',
      RelatedItemsUpdate => {
        ItemToAdd => {
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
        },    # OPTIONAL
        ItemToRemove => {
          Type => 'ANALYSIS'
          ,    # values: ANALYSIS, INCIDENT, METRIC, PARENT, ATTACHMENT, OTHER
          Value => {
            Arn              => 'MyArn',                 # max: 1000
            MetricDefinition => 'MyMetricDefinition',    # max: 4000; OPTIONAL
            Url              => 'MyUrl',                 # max: 1000; OPTIONAL
          },

        },
      },
      ClientToken => 'MyClientToken',                    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/UpdateRelatedItems>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token ensuring that the action is called only once with the specified
details.



=head2 B<REQUIRED> IncidentRecordArn => Str

The Amazon Resource Name (ARN) of the incident record you are updating
related items in.



=head2 B<REQUIRED> RelatedItemsUpdate => L<Paws::SSMIncidents::RelatedItemsUpdate>

Details about the item you are adding or deleting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRelatedItems in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

