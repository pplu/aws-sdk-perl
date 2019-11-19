# Generated from json/callargs_class.tt

package Paws::CloudWatchEvents::PutTargets;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_Target/;
  has EventBusName => (is => 'ro', isa => Str, predicate => 1);
  has Rule => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Targets => (is => 'ro', isa => ArrayRef[CloudWatchEvents_Target], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutTargets');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatchEvents::PutTargetsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventBusName' => {
                                   'type' => 'Str'
                                 },
               'Targets' => {
                              'type' => 'ArrayRef[CloudWatchEvents_Target]',
                              'class' => 'Paws::CloudWatchEvents::Target'
                            },
               'Rule' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Targets' => 1,
                    'Rule' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutTargets - Arguments for method PutTargets on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutTargets on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method PutTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutTargets.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $PutTargetsResponse = $events->PutTargets(
      Rule    => 'MyRuleName',
      Targets => [
        {
          Arn             => 'MyTargetArn',    # min: 1, max: 1600
          Id              => 'MyTargetId',     # min: 1, max: 64
          BatchParameters => {
            JobDefinition   => 'MyString',     # OPTIONAL
            JobName         => 'MyString',     # OPTIONAL
            ArrayProperties => {
              Size => 1,                       # OPTIONAL
            },    # OPTIONAL
            RetryStrategy => {
              Attempts => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          EcsParameters => {
            TaskDefinitionArn    => 'MyArn',    # min: 1, max: 1600
            Group                => 'MyString', # OPTIONAL
            LaunchType           => 'EC2',      # values: EC2, FARGATE; OPTIONAL
            NetworkConfiguration => {
              AwsvpcConfiguration => {
                Subnets => [
                  'MyString', ...               # OPTIONAL
                ],
                AssignPublicIp =>
                  'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                SecurityGroups => [
                  'MyString', ...    # OPTIONAL
                ],
              },    # OPTIONAL
            },    # OPTIONAL
            PlatformVersion => 'MyString',    # OPTIONAL
            TaskCount       => 1,             # min: 1; OPTIONAL
          },    # OPTIONAL
          Input            => 'MyTargetInput',        # max: 8192; OPTIONAL
          InputPath        => 'MyTargetInputPath',    # max: 256
          InputTransformer => {
            InputTemplate => 'MyTransformerInput',    # min: 1, max: 8192
            InputPathsMap => {
              'MyInputTransformerPathKey' =>
                'MyTargetInputPath',    # key: min: 1, max: 256, value: max: 256
            },    # max: 10; OPTIONAL
          },    # OPTIONAL
          KinesisParameters => {
            PartitionKeyPath => 'MyTargetPartitionKeyPath',    # max: 256

          },    # OPTIONAL
          RoleArn              => 'MyRoleArn',    # min: 1, max: 1600; OPTIONAL
          RunCommandParameters => {
            RunCommandTargets => [
              {
                Key    => 'MyRunCommandTargetKey',    # min: 1, max: 128
                Values => [
                  'MyRunCommandTargetValue', ...      # min: 1, max: 256
                ],                                    # min: 1, max: 50

              },
              ...
            ],                                        # min: 1, max: 5

          },    # OPTIONAL
          SqsParameters => {
            MessageGroupId => 'MyMessageGroupId',    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      EventBusName => 'MyEventBusName',    # OPTIONAL
    );

    # Results:
    my $FailedEntries    = $PutTargetsResponse->FailedEntries;
    my $FailedEntryCount = $PutTargetsResponse->FailedEntryCount;

    # Returns a L<Paws::CloudWatchEvents::PutTargetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/PutTargets>

=head1 ATTRIBUTES


=head2 EventBusName => Str

The name of the event bus associated with the rule. If you omit this,
the default event bus is used.



=head2 B<REQUIRED> Rule => Str

The name of the rule.



=head2 B<REQUIRED> Targets => ArrayRef[CloudWatchEvents_Target]

The targets to update or add to the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutTargets in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

