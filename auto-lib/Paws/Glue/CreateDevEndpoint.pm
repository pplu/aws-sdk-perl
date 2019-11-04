
package Paws::Glue::CreateDevEndpoint;
  use Moose;
  has Arguments => (is => 'ro', isa => 'Paws::Glue::MapValue');
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has ExtraJarsS3Path => (is => 'ro', isa => 'Str');
  has ExtraPythonLibsS3Path => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has PublicKey => (is => 'ro', isa => 'Str');
  has PublicKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');
  has WorkerType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDevEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateDevEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateDevEndpoint - Arguments for method CreateDevEndpoint on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDevEndpoint on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateDevEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDevEndpoint.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateDevEndpointResponse = $glue->CreateDevEndpoint(
      EndpointName    => 'MyGenericString',
      RoleArn         => 'MyRoleArn',
      Arguments       => { 'MyGenericString' => 'MyGenericString', }, # OPTIONAL
      ExtraJarsS3Path => 'MyGenericString',                           # OPTIONAL
      ExtraPythonLibsS3Path => 'MyGenericString',                     # OPTIONAL
      NumberOfNodes         => 1,                                     # OPTIONAL
      NumberOfWorkers       => 1,                                     # OPTIONAL
      PublicKey             => 'MyGenericString',                     # OPTIONAL
      PublicKeys            => [ 'MyGenericString', ... ],            # OPTIONAL
      SecurityConfiguration => 'MyNameString',                        # OPTIONAL
      SecurityGroupIds      => [ 'MyGenericString', ... ],            # OPTIONAL
      SubnetId              => 'MyGenericString',                     # OPTIONAL
      Tags                  => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      WorkerType => 'Standard',    # OPTIONAL
    );

    # Results:
    my $Arguments        = $CreateDevEndpointResponse->Arguments;
    my $AvailabilityZone = $CreateDevEndpointResponse->AvailabilityZone;
    my $CreatedTimestamp = $CreateDevEndpointResponse->CreatedTimestamp;
    my $EndpointName     = $CreateDevEndpointResponse->EndpointName;
    my $ExtraJarsS3Path  = $CreateDevEndpointResponse->ExtraJarsS3Path;
    my $ExtraPythonLibsS3Path =
      $CreateDevEndpointResponse->ExtraPythonLibsS3Path;
    my $FailureReason   = $CreateDevEndpointResponse->FailureReason;
    my $NumberOfNodes   = $CreateDevEndpointResponse->NumberOfNodes;
    my $NumberOfWorkers = $CreateDevEndpointResponse->NumberOfWorkers;
    my $RoleArn         = $CreateDevEndpointResponse->RoleArn;
    my $SecurityConfiguration =
      $CreateDevEndpointResponse->SecurityConfiguration;
    my $SecurityGroupIds    = $CreateDevEndpointResponse->SecurityGroupIds;
    my $Status              = $CreateDevEndpointResponse->Status;
    my $SubnetId            = $CreateDevEndpointResponse->SubnetId;
    my $VpcId               = $CreateDevEndpointResponse->VpcId;
    my $WorkerType          = $CreateDevEndpointResponse->WorkerType;
    my $YarnEndpointAddress = $CreateDevEndpointResponse->YarnEndpointAddress;
    my $ZeppelinRemoteSparkInterpreterPort =
      $CreateDevEndpointResponse->ZeppelinRemoteSparkInterpreterPort;

    # Returns a L<Paws::Glue::CreateDevEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateDevEndpoint>

=head1 ATTRIBUTES


=head2 Arguments => L<Paws::Glue::MapValue>

A map of arguments used to configure the C<DevEndpoint>.



=head2 B<REQUIRED> EndpointName => Str

The name to be assigned to the new C<DevEndpoint>.



=head2 ExtraJarsS3Path => Str

The path to one or more Java C<.jar> files in an S3 bucket that should
be loaded in your C<DevEndpoint>.



=head2 ExtraPythonLibsS3Path => Str

The paths to one or more Python libraries in an Amazon S3 bucket that
should be loaded in your C<DevEndpoint>. Multiple values must be
complete paths separated by a comma.

You can only use pure Python libraries with a C<DevEndpoint>. Libraries
that rely on C extensions, such as the pandas
(http://pandas.pydata.org/) Python data analysis library, are not yet
supported.



=head2 NumberOfNodes => Int

The number of AWS Glue Data Processing Units (DPUs) to allocate to this
C<DevEndpoint>.



=head2 NumberOfWorkers => Int

The number of workers of a defined C<workerType> that are allocated to
the development endpoint.

The maximum number of workers you can define are 299 for C<G.1X>, and
149 for C<G.2X>.



=head2 PublicKey => Str

The public key to be used by this C<DevEndpoint> for authentication.
This attribute is provided for backward compatibility because the
recommended attribute to use is public keys.



=head2 PublicKeys => ArrayRef[Str|Undef]

A list of public keys to be used by the development endpoints for
authentication. The use of this attribute is preferred over a single
public key because the public keys allow you to have a different
private key per client.

If you previously created an endpoint with a public key, you must
remove that key to be able to set a list of public keys. Call the
C<UpdateDevEndpoint> API with the public key content in the
C<deletePublicKeys> attribute, and the list of new keys in the
C<addPublicKeys> attribute.



=head2 B<REQUIRED> RoleArn => Str

The IAM role for the C<DevEndpoint>.



=head2 SecurityConfiguration => Str

The name of the C<SecurityConfiguration> structure to be used with this
C<DevEndpoint>.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

Security group IDs for the security groups to be used by the new
C<DevEndpoint>.



=head2 SubnetId => Str

The subnet ID for the new C<DevEndpoint> to use.



=head2 Tags => L<Paws::Glue::TagsMap>

The tags to use with this DevEndpoint. You may use tags to limit access
to the DevEndpoint. For more information about tags in AWS Glue, see
AWS Tags in AWS Glue
(https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html) in the
developer guide.



=head2 WorkerType => Str

The type of predefined worker that is allocated to the development
endpoint. Accepts a value of Standard, G.1X, or G.2X.

=over

=item *

For the C<Standard> worker type, each worker provides 4 vCPU, 16 GB of
memory and a 50GB disk, and 2 executors per worker.

=item *

For the C<G.1X> worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
of memory, 64 GB disk), and provides 1 executor per worker. We
recommend this worker type for memory-intensive jobs.

=item *

For the C<G.2X> worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
of memory, 128 GB disk), and provides 1 executor per worker. We
recommend this worker type for memory-intensive jobs.

=back


Valid values are: C<"Standard">, C<"G.1X">, C<"G.2X">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDevEndpoint in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

