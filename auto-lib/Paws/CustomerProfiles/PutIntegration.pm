
package Paws::CustomerProfiles::PutIntegration;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has FlowDefinition => (is => 'ro', isa => 'Paws::CustomerProfiles::FlowDefinition');
  has ObjectTypeName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');
  has Uri => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntegration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/integrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::PutIntegrationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::PutIntegration - Arguments for method PutIntegration on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntegration on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method PutIntegration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntegration.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $PutIntegrationResponse = $profile->PutIntegration(
      DomainName     => 'Myname',
      ObjectTypeName => 'MytypeName',
      FlowDefinition => {
        FlowName         => 'MyFlowName',    # max: 256
        KmsArn           => 'MyKmsArn',      # min: 20, max: 2048
        SourceFlowConfig => {
          ConnectorType =>
            'Salesforce', # values: Salesforce, Marketo, Zendesk, Servicenow, S3
          SourceConnectorProperties => {
            Marketo => {
              Object => 'MyObject',    # max: 512

            },    # OPTIONAL
            S3 => {
              BucketName   => 'MyBucketName',      # min: 3, max: 63
              BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
            },    # OPTIONAL
            Salesforce => {
              Object                   => 'MyObject',    # max: 512
              EnableDynamicFieldUpdate => 1,             # OPTIONAL
              IncludeDeletedRecords    => 1,             # OPTIONAL
            },    # OPTIONAL
            ServiceNow => {
              Object => 'MyObject',    # max: 512

            },    # OPTIONAL
            Zendesk => {
              Object => 'MyObject',    # max: 512

            },    # OPTIONAL
          },
          ConnectorProfileName => 'MyConnectorProfileName', # max: 256; OPTIONAL
          IncrementalPullConfig => {
            DatetimeTypeFieldName =>
              'MyDatetimeTypeFieldName',                    # max: 256; OPTIONAL
          },    # OPTIONAL
        },
        Tasks => [
          {
            SourceFields => [
              'MystringTo2048', ...    # max: 2048
            ],
            TaskType => 'Arithmetic'
            , # values: Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
            ConnectorOperator => {
              Marketo => 'PROJECTION'
              , # values: PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
              S3 => 'PROJECTION'
              , # values: PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
              Salesforce => 'PROJECTION'
              , # values: PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
              ServiceNow => 'PROJECTION'
              , # values: PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
              Zendesk => 'PROJECTION'
              , # values: PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            },    # OPTIONAL
            DestinationField => 'MyDestinationField',    # max: 256; OPTIONAL
            TaskProperties   => {
              'VALUE' => 'MyProperty'
              , # key: values: VALUE, VALUES, DATA_TYPE, UPPER_BOUND, LOWER_BOUND, SOURCE_DATA_TYPE, DESTINATION_DATA_TYPE, VALIDATION_ACTION, MASK_VALUE, MASK_LENGTH, TRUNCATE_LENGTH, MATH_OPERATION_FIELDS_ORDER, CONCAT_FORMAT, SUBFIELD_CATEGORY_MAP, value: max: 2048
            },    # OPTIONAL
          },
          ...
        ],
        TriggerConfig => {
          TriggerType       => 'Scheduled', # values: Scheduled, Event, OnDemand
          TriggerProperties => {
            Scheduled => {
              ScheduleExpression => 'MyScheduleExpression',    # max: 256
              DataPullMode       =>
                'Incremental',    # values: Incremental, Complete; OPTIONAL
              FirstExecutionFrom => '1970-01-01T01:00:00',    # OPTIONAL
              ScheduleEndTime    => '1970-01-01T01:00:00',    # OPTIONAL
              ScheduleOffset    => 1,                     # max: 36000; OPTIONAL
              ScheduleStartTime => '1970-01-01T01:00:00', # OPTIONAL
              Timezone          => 'MyTimezone',          # max: 256; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },
        Description => 'MyFlowDescription',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Uri => 'Mystring1To255',    # OPTIONAL
    );

    # Results:
    my $CreatedAt      = $PutIntegrationResponse->CreatedAt;
    my $DomainName     = $PutIntegrationResponse->DomainName;
    my $LastUpdatedAt  = $PutIntegrationResponse->LastUpdatedAt;
    my $ObjectTypeName = $PutIntegrationResponse->ObjectTypeName;
    my $Tags           = $PutIntegrationResponse->Tags;
    my $Uri            = $PutIntegrationResponse->Uri;

    # Returns a L<Paws::CustomerProfiles::PutIntegrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/PutIntegration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 FlowDefinition => L<Paws::CustomerProfiles::FlowDefinition>

The configuration that controls how Customer Profiles retrieves data
from the source.



=head2 B<REQUIRED> ObjectTypeName => Str

The name of the profile object type.



=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.



=head2 Uri => Str

The URI of the S3 bucket or any other type of data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegration in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

