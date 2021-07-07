
package Paws::Glue::UpdateMLTransform;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has GlueVersion => (is => 'ro', isa => 'Str');
  has MaxCapacity => (is => 'ro', isa => 'Num');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has Parameters => (is => 'ro', isa => 'Paws::Glue::TransformParameters');
  has Role => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
  has TransformId => (is => 'ro', isa => 'Str', required => 1);
  has WorkerType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMLTransform');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateMLTransformResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateMLTransform - Arguments for method UpdateMLTransform on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMLTransform on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateMLTransform.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMLTransform.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateMLTransformResponse = $glue->UpdateMLTransform(
      TransformId     => 'MyHashString',
      Description     => 'MyDescriptionString',    # OPTIONAL
      GlueVersion     => 'MyGlueVersionString',    # OPTIONAL
      MaxCapacity     => 1,                        # OPTIONAL
      MaxRetries      => 1,                        # OPTIONAL
      Name            => 'MyNameString',           # OPTIONAL
      NumberOfWorkers => 1,                        # OPTIONAL
      Parameters      => {
        TransformType         => 'FIND_MATCHES',    # values: FIND_MATCHES
        FindMatchesParameters => {
          AccuracyCostTradeoff    => 1,             # max: 1; OPTIONAL
          EnforceProvidedLabels   => 1,             # OPTIONAL
          PrecisionRecallTradeoff => 1,             # max: 1; OPTIONAL
          PrimaryKeyColumnName    =>
            'MyColumnNameString',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Role       => 'MyRoleString',    # OPTIONAL
      Timeout    => 1,                 # OPTIONAL
      WorkerType => 'Standard',        # OPTIONAL
    );

    # Results:
    my $TransformId = $UpdateMLTransformResponse->TransformId;

    # Returns a L<Paws::Glue::UpdateMLTransformResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateMLTransform>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the transform. The default is an empty string.



=head2 GlueVersion => Str

This value determines which version of Glue this machine learning
transform is compatible with. Glue 1.0 is recommended for most
customers. If the value is not set, the Glue compatibility defaults to
Glue 0.9. For more information, see Glue Versions
(https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions)
in the developer guide.



=head2 MaxCapacity => Num

The number of Glue data processing units (DPUs) that are allocated to
task runs for this transform. You can allocate from 2 to 100 DPUs; the
default is 10. A DPU is a relative measure of processing power that
consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
information, see the Glue pricing page
(https://aws.amazon.com/glue/pricing/).

When the C<WorkerType> field is set to a value other than C<Standard>,
the C<MaxCapacity> field is set automatically and becomes read-only.



=head2 MaxRetries => Int

The maximum number of times to retry a task for this transform after a
task run fails.



=head2 Name => Str

The unique name that you gave the transform when you created it.



=head2 NumberOfWorkers => Int

The number of workers of a defined C<workerType> that are allocated
when this task runs.



=head2 Parameters => L<Paws::Glue::TransformParameters>

The configuration parameters that are specific to the transform type
(algorithm) used. Conditionally dependent on the transform type.



=head2 Role => Str

The name or Amazon Resource Name (ARN) of the IAM role with the
required permissions.



=head2 Timeout => Int

The timeout for a task run for this transform in minutes. This is the
maximum time that a task run for this transform can consume resources
before it is terminated and enters C<TIMEOUT> status. The default is
2,880 minutes (48 hours).



=head2 B<REQUIRED> TransformId => Str

A unique identifier that was generated when the transform was created.



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

This class forms part of L<Paws>, documenting arguments for method UpdateMLTransform in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

