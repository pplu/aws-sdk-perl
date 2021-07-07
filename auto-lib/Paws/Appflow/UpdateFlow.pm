
package Paws::Appflow::UpdateFlow;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DestinationFlowConfigList => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::DestinationFlowConfig]', traits => ['NameInRequest'], request_name => 'destinationFlowConfigList', required => 1);
  has FlowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowName', required => 1);
  has SourceFlowConfig => (is => 'ro', isa => 'Paws::Appflow::SourceFlowConfig', traits => ['NameInRequest'], request_name => 'sourceFlowConfig');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::Task]', traits => ['NameInRequest'], request_name => 'tasks', required => 1);
  has TriggerConfig => (is => 'ro', isa => 'Paws::Appflow::TriggerConfig', traits => ['NameInRequest'], request_name => 'triggerConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-flow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::UpdateFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::UpdateFlow - Arguments for method UpdateFlow on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFlow on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method UpdateFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFlow.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $UpdateFlowResponse = $appflow->UpdateFlow(
      DestinationFlowConfigList => [
        {
          ConnectorType => 'Salesforce'
          , # values: Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles
          DestinationConnectorProperties => {
            CustomerProfiles => {
              DomainName     => 'MyDomainName',        # max: 64
              ObjectTypeName => 'MyObjectTypeName',    # max: 255; OPTIONAL
            },    # OPTIONAL
            EventBridge => {
              Object              => 'MyObject',    # max: 512
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Honeycode => {
              Object              => 'MyObject',    # max: 512
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            LookoutMetrics => {

            },    # OPTIONAL
            Redshift => {
              IntermediateBucketName =>
                'MyBucketName',    # min: 3, max: 63; OPTIONAL
              Object              => 'MyObject',          # max: 512
              BucketPrefix        => 'MyBucketPrefix',    # max: 512; OPTIONAL
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            S3 => {
              BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
              BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
              S3OutputFormatConfig => {
                AggregationConfig => {
                  AggregationType =>
                    'None',    # values: None, SingleFile; OPTIONAL
                },    # OPTIONAL
                FileType     => 'CSV',    # values: CSV, JSON, PARQUET; OPTIONAL
                PrefixConfig => {
                  PrefixFormat =>
                    'YEAR',   # values: YEAR, MONTH, DAY, HOUR, MINUTE; OPTIONAL
                  PrefixType => 'FILENAME'
                  ,    # values: FILENAME, PATH, PATH_AND_FILENAME; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Salesforce => {
              Object              => 'MyObject',    # max: 512
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
              IdFieldNames => [
                'MyName', ...    # max: 128
              ],    # max: 1; OPTIONAL
              WriteOperationType =>
                'INSERT',    # values: INSERT, UPSERT, UPDATE; OPTIONAL
            },    # OPTIONAL
            Snowflake => {
              IntermediateBucketName =>
                'MyBucketName',    # min: 3, max: 63; OPTIONAL
              Object              => 'MyObject',          # max: 512
              BucketPrefix        => 'MyBucketPrefix',    # max: 512; OPTIONAL
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            Upsolver => {
              BucketName           => 'MyUpsolverBucketName', # min: 16, max: 63
              S3OutputFormatConfig => {
                PrefixConfig => {
                  PrefixFormat =>
                    'YEAR',   # values: YEAR, MONTH, DAY, HOUR, MINUTE; OPTIONAL
                  PrefixType => 'FILENAME'
                  ,    # values: FILENAME, PATH, PATH_AND_FILENAME; OPTIONAL
                },    # OPTIONAL
                AggregationConfig => {
                  AggregationType =>
                    'None',    # values: None, SingleFile; OPTIONAL
                },    # OPTIONAL
                FileType => 'CSV',    # values: CSV, JSON, PARQUET; OPTIONAL
              },
              BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
            },    # OPTIONAL
            Zendesk => {
              Object              => 'MyObject',    # max: 512
              ErrorHandlingConfig => {
                BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
                BucketPrefix => 'MyBucketPrefix',    # max: 512; OPTIONAL
                FailOnFirstDestinationError => 1,    # OPTIONAL
              },    # OPTIONAL
              IdFieldNames => [
                'MyName', ...    # max: 128
              ],    # max: 1; OPTIONAL
              WriteOperationType =>
                'INSERT',    # values: INSERT, UPSERT, UPDATE; OPTIONAL
            },    # OPTIONAL
          },
          ConnectorProfileName => 'MyConnectorProfileName', # max: 256; OPTIONAL
        },
        ...
      ],
      FlowName => 'MyFlowName',
      Tasks    => [
        {
          SourceFields => [
            'MyString', ...    # max: 2048
          ],
          TaskType => 'Arithmetic'
          ,   # values: Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
          ConnectorOperator => {
            Amplitude => 'BETWEEN',     # values: BETWEEN; OPTIONAL
            Datadog   => 'PROJECTION'
            , # values: PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Dynatrace => 'PROJECTION'
            , # values: PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            GoogleAnalytics =>
              'PROJECTION',    # values: PROJECTION, BETWEEN; OPTIONAL
            InforNexus => 'PROJECTION'
            , # values: PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Marketo => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            S3 => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Salesforce => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            ServiceNow => 'PROJECTION'
            , # values: PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Singular => 'PROJECTION'
            , # values: PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Slack => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Trendmicro => 'PROJECTION'
            , # values: PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
            Veeva => 'PROJECTION'
            , # values: PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP; OPTIONAL
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
        TriggerType       => 'Scheduled',   # values: Scheduled, Event, OnDemand
        TriggerProperties => {
          Scheduled => {
            ScheduleExpression => 'MyScheduleExpression',    # max: 256
            DataPullMode       =>
              'Incremental',    # values: Incremental, Complete; OPTIONAL
            FirstExecutionFrom => '1970-01-01T01:00:00',  # OPTIONAL
            ScheduleEndTime    => '1970-01-01T01:00:00',  # OPTIONAL
            ScheduleOffset     => 1,                      # max: 36000; OPTIONAL
            ScheduleStartTime  => '1970-01-01T01:00:00',  # OPTIONAL
            Timezone           => 'MyTimezone',           # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      Description      => 'MyFlowDescription',    # OPTIONAL
      SourceFlowConfig => {
        ConnectorType => 'Salesforce'
        , # values: Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles
        SourceConnectorProperties => {
          Amplitude => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Datadog => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Dynatrace => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          GoogleAnalytics => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          InforNexus => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Marketo => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          S3 => {
            BucketName   => 'MyBucketName',      # min: 3, max: 63; OPTIONAL
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
          Singular => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Slack => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Trendmicro => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Veeva => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
          Zendesk => {
            Object => 'MyObject',    # max: 512

          },    # OPTIONAL
        },
        ConnectorProfileName  => 'MyConnectorProfileName',  # max: 256; OPTIONAL
        IncrementalPullConfig => {
          DatetimeTypeFieldName =>
            'MyDatetimeTypeFieldName',                      # max: 256; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FlowStatus = $UpdateFlowResponse->FlowStatus;

    # Returns a L<Paws::Appflow::UpdateFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/UpdateFlow>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the flow.



=head2 B<REQUIRED> DestinationFlowConfigList => ArrayRef[L<Paws::Appflow::DestinationFlowConfig>]

The configuration that controls how Amazon AppFlow transfers data to
the destination connector.



=head2 B<REQUIRED> FlowName => Str

The specified name of the flow. Spaces are not allowed. Use underscores
(_) or hyphens (-) only.



=head2 SourceFlowConfig => L<Paws::Appflow::SourceFlowConfig>





=head2 B<REQUIRED> Tasks => ArrayRef[L<Paws::Appflow::Task>]

A list of tasks that Amazon AppFlow performs while transferring the
data in the flow run.



=head2 B<REQUIRED> TriggerConfig => L<Paws::Appflow::TriggerConfig>

The trigger settings that determine how and when the flow runs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFlow in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

