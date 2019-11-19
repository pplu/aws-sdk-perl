# Generated from json/callargs_class.tt

package Paws::Glue::CreateMLTransform;
  use Moo;
  use Types::Standard qw/Str ArrayRef Num Int/;
  use Paws::Glue::Types qw/Glue_GlueTable Glue_TransformParameters/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has InputRecordTables => (is => 'ro', isa => ArrayRef[Glue_GlueTable], required => 1, predicate => 1);
  has MaxCapacity => (is => 'ro', isa => Num, predicate => 1);
  has MaxRetries => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NumberOfWorkers => (is => 'ro', isa => Int, predicate => 1);
  has Parameters => (is => 'ro', isa => Glue_TransformParameters, required => 1, predicate => 1);
  has Role => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Timeout => (is => 'ro', isa => Int, predicate => 1);
  has WorkerType => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateMLTransform');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::CreateMLTransformResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxRetries' => {
                                 'type' => 'Int'
                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Timeout' => {
                              'type' => 'Int'
                            },
               'Role' => {
                           'type' => 'Str'
                         },
               'Parameters' => {
                                 'class' => 'Paws::Glue::TransformParameters',
                                 'type' => 'Glue_TransformParameters'
                               },
               'NumberOfWorkers' => {
                                      'type' => 'Int'
                                    },
               'WorkerType' => {
                                 'type' => 'Str'
                               },
               'MaxCapacity' => {
                                  'type' => 'Num'
                                },
               'InputRecordTables' => {
                                        'class' => 'Paws::Glue::GlueTable',
                                        'type' => 'ArrayRef[Glue_GlueTable]'
                                      },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'InputRecordTables' => 1,
                    'Parameters' => 1,
                    'Role' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateMLTransform - Arguments for method CreateMLTransform on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMLTransform on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateMLTransform.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMLTransform.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateMLTransformResponse = $glue->CreateMLTransform(
      InputRecordTables => [
        {
          DatabaseName   => 'MyNameString',    # min: 1, max: 255
          TableName      => 'MyNameString',    # min: 1, max: 255
          CatalogId      => 'MyNameString',    # min: 1, max: 255
          ConnectionName => 'MyNameString',    # min: 1, max: 255
        },
        ...
      ],
      Name       => 'MyNameString',
      Parameters => {
        TransformType         => 'FIND_MATCHES',    # values: FIND_MATCHES
        FindMatchesParameters => {
          AccuracyCostTradeoff    => 1,             # max: 1; OPTIONAL
          EnforceProvidedLabels   => 1,             # OPTIONAL
          PrecisionRecallTradeoff => 1,             # max: 1; OPTIONAL
          PrimaryKeyColumnName =>
            'MyColumnNameString',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      Role            => 'MyRoleString',
      Description     => 'MyDescriptionString',    # OPTIONAL
      MaxCapacity     => 1,                        # OPTIONAL
      MaxRetries      => 1,                        # OPTIONAL
      NumberOfWorkers => 1,                        # OPTIONAL
      Timeout         => 1,                        # OPTIONAL
      WorkerType      => 'Standard',               # OPTIONAL
    );

    # Results:
    my $TransformId = $CreateMLTransformResponse->TransformId;

    # Returns a L<Paws::Glue::CreateMLTransformResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateMLTransform>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the machine learning transform that is being defined.
The default is an empty string.



=head2 B<REQUIRED> InputRecordTables => ArrayRef[Glue_GlueTable]

A list of AWS Glue table definitions used by the transform.



=head2 MaxCapacity => Num

The number of AWS Glue data processing units (DPUs) that are allocated
to task runs for this transform. You can allocate from 2 to 100 DPUs;
the default is 10. A DPU is a relative measure of processing power that
consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
information, see the AWS Glue pricing page
(https://aws.amazon.com/glue/pricing/).

When the C<WorkerType> field is set to a value other than C<Standard>,
the C<MaxCapacity> field is set automatically and becomes read-only.



=head2 MaxRetries => Int

The maximum number of times to retry a task for this transform after a
task run fails.



=head2 B<REQUIRED> Name => Str

The unique name that you give the transform when you create it.



=head2 NumberOfWorkers => Int

The number of workers of a defined C<workerType> that are allocated
when this task runs.



=head2 B<REQUIRED> Parameters => Glue_TransformParameters

The algorithmic parameters that are specific to the transform type
used. Conditionally dependent on the transform type.



=head2 B<REQUIRED> Role => Str

The name or Amazon Resource Name (ARN) of the IAM role with the
required permissions. Ensure that this role has permission to your
Amazon Simple Storage Service (Amazon S3) sources, targets, temporary
directory, scripts, and any libraries that are used by the task run for
this transform.



=head2 Timeout => Int

The timeout of the task run for this transform in minutes. This is the
maximum time that a task run for this transform can consume resources
before it is terminated and enters C<TIMEOUT> status. The default is
2,880 minutes (48 hours).



=head2 WorkerType => Str

The type of predefined worker that is allocated when this task runs.
Accepts a value of Standard, G.1X, or G.2X.

=over

=item *

For the C<Standard> worker type, each worker provides 4 vCPU, 16 GB of
memory and a 50GB disk, and 2 executors per worker.

=item *

For the C<G.1X> worker type, each worker provides 4 vCPU, 16 GB of
memory and a 64GB disk, and 1 executor per worker.

=item *

For the C<G.2X> worker type, each worker provides 8 vCPU, 32 GB of
memory and a 128GB disk, and 1 executor per worker.

=back


Valid values are: C<"Standard">, C<"G.1X">, C<"G.2X">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMLTransform in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

