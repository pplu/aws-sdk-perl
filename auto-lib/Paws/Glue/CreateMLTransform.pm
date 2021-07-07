
package Paws::Glue::CreateMLTransform;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has GlueVersion => (is => 'ro', isa => 'Str');
  has InputRecordTables => (is => 'ro', isa => 'ArrayRef[Paws::Glue::GlueTable]', required => 1);
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has Parameters => (is => 'ro', isa => 'Paws::Glue::TransformParameters', required => 1);
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');
  has Timeout => (is => 'ro', isa => 'Int');
  has TransformEncryption => (is => 'ro', isa => 'Paws::Glue::TransformEncryption');
  has WorkerType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMLTransform');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateMLTransformResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
          PrimaryKeyColumnName    =>
            'MyColumnNameString',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      Role            => 'MyRoleString',
      Description     => 'MyDescriptionString',    # OPTIONAL
      GlueVersion     => 'MyGlueVersionString',    # OPTIONAL
      MaxCapacity     => 1,                        # OPTIONAL
      MaxRetries      => 1,                        # OPTIONAL
      NumberOfWorkers => 1,                        # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Timeout             => 1,    # OPTIONAL
      TransformEncryption => {
        MlUserDataEncryption => {
          MlUserDataEncryptionMode => 'DISABLED',    # values: DISABLED, SSE-KMS
          KmsKeyId                 => 'MyNameString',    # min: 1, max: 255
        },    # OPTIONAL
        TaskRunSecurityConfigurationName => 'MyNameString',   # min: 1, max: 255
      },    # OPTIONAL
      WorkerType => 'Standard',    # OPTIONAL
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



=head2 GlueVersion => Str

This value determines which version of Glue this machine learning
transform is compatible with. Glue 1.0 is recommended for most
customers. If the value is not set, the Glue compatibility defaults to
Glue 0.9. For more information, see Glue Versions
(https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions)
in the developer guide.



=head2 B<REQUIRED> InputRecordTables => ArrayRef[L<Paws::Glue::GlueTable>]

A list of Glue table definitions used by the transform.



=head2 MaxCapacity => Num

The number of Glue data processing units (DPUs) that are allocated to
task runs for this transform. You can allocate from 2 to 100 DPUs; the
default is 10. A DPU is a relative measure of processing power that
consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
information, see the Glue pricing page
(https://aws.amazon.com/glue/pricing/).

C<MaxCapacity> is a mutually exclusive option with C<NumberOfWorkers>
and C<WorkerType>.

=over

=item *

If either C<NumberOfWorkers> or C<WorkerType> is set, then
C<MaxCapacity> cannot be set.

=item *

If C<MaxCapacity> is set then neither C<NumberOfWorkers> or
C<WorkerType> can be set.

=item *

If C<WorkerType> is set, then C<NumberOfWorkers> is required (and vice
versa).

=item *

C<MaxCapacity> and C<NumberOfWorkers> must both be at least 1.

=back

When the C<WorkerType> field is set to a value other than C<Standard>,
the C<MaxCapacity> field is set automatically and becomes read-only.

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

If C<WorkerType> is set, then C<NumberOfWorkers> is required (and vice
versa).



=head2 B<REQUIRED> Parameters => L<Paws::Glue::TransformParameters>

The algorithmic parameters that are specific to the transform type
used. Conditionally dependent on the transform type.



=head2 B<REQUIRED> Role => Str

The name or Amazon Resource Name (ARN) of the IAM role with the
required permissions. The required permissions include both Glue
service role permissions to Glue resources, and Amazon S3 permissions
required by the transform.

=over

=item *

This role needs Glue service role permissions to allow access to
resources in Glue. See Attach a Policy to IAM Users That Access Glue
(https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html).

=item *

This role needs permission to your Amazon Simple Storage Service
(Amazon S3) sources, targets, temporary directory, scripts, and any
libraries used by the task run for this transform.

=back




=head2 Tags => L<Paws::Glue::TagsMap>

The tags to use with this machine learning transform. You may use tags
to limit access to the machine learning transform. For more information
about tags in Glue, see Amazon Web Services Tags in Glue
(https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html) in the
developer guide.



=head2 Timeout => Int

The timeout of the task run for this transform in minutes. This is the
maximum time that a task run for this transform can consume resources
before it is terminated and enters C<TIMEOUT> status. The default is
2,880 minutes (48 hours).



=head2 TransformEncryption => L<Paws::Glue::TransformEncryption>

The encryption-at-rest settings of the transform that apply to
accessing user data. Machine learning transforms can access user data
encrypted in Amazon S3 using KMS.



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

C<MaxCapacity> is a mutually exclusive option with C<NumberOfWorkers>
and C<WorkerType>.

=over

=item *

If either C<NumberOfWorkers> or C<WorkerType> is set, then
C<MaxCapacity> cannot be set.

=item *

If C<MaxCapacity> is set then neither C<NumberOfWorkers> or
C<WorkerType> can be set.

=item *

If C<WorkerType> is set, then C<NumberOfWorkers> is required (and vice
versa).

=item *

C<MaxCapacity> and C<NumberOfWorkers> must both be at least 1.

=back


Valid values are: C<"Standard">, C<"G.1X">, C<"G.2X">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMLTransform in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

