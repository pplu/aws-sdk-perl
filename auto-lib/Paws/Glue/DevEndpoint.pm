package Paws::Glue::DevEndpoint;
  use Moose;
  has Arguments => (is => 'ro', isa => 'Paws::Glue::MapValue');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str');
  has ExtraJarsS3Path => (is => 'ro', isa => 'Str');
  has ExtraPythonLibsS3Path => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str');
  has LastUpdateStatus => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has PrivateAddress => (is => 'ro', isa => 'Str');
  has PublicAddress => (is => 'ro', isa => 'Str');
  has PublicKey => (is => 'ro', isa => 'Str');
  has PublicKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
  has WorkerType => (is => 'ro', isa => 'Str');
  has YarnEndpointAddress => (is => 'ro', isa => 'Str');
  has ZeppelinRemoteSparkInterpreterPort => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DevEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::DevEndpoint object:

  $service_obj->Method(Att1 => { Arguments => $value, ..., ZeppelinRemoteSparkInterpreterPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::DevEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Arguments

=head1 DESCRIPTION

A development endpoint where a developer can remotely debug extract,
transform, and load (ETL) scripts.

=head1 ATTRIBUTES


=head2 Arguments => L<Paws::Glue::MapValue>

  A map of arguments used to configure the C<DevEndpoint>.

Currently, only C<"--enable-glue-datacatalog": ""> is supported as a
valid argument.


=head2 AvailabilityZone => Str

  The AWS Availability Zone where this C<DevEndpoint> is located.


=head2 CreatedTimestamp => Str

  The point in time at which this DevEndpoint was created.


=head2 EndpointName => Str

  The name of the C<DevEndpoint>.


=head2 ExtraJarsS3Path => Str

  The path to one or more Java C<.jar> files in an S3 bucket that should
be loaded in your C<DevEndpoint>.

You can only use pure Java/Scala libraries with a C<DevEndpoint>.


=head2 ExtraPythonLibsS3Path => Str

  The paths to one or more Python libraries in an Amazon S3 bucket that
should be loaded in your C<DevEndpoint>. Multiple values must be
complete paths separated by a comma.

You can only use pure Python libraries with a C<DevEndpoint>. Libraries
that rely on C extensions, such as the pandas
(http://pandas.pydata.org/) Python data analysis library, are not
currently supported.


=head2 FailureReason => Str

  The reason for a current failure in this C<DevEndpoint>.


=head2 LastModifiedTimestamp => Str

  The point in time at which this C<DevEndpoint> was last modified.


=head2 LastUpdateStatus => Str

  The status of the last update.


=head2 NumberOfNodes => Int

  The number of AWS Glue Data Processing Units (DPUs) allocated to this
C<DevEndpoint>.


=head2 NumberOfWorkers => Int

  The number of workers of a defined C<workerType> that are allocated to
the development endpoint.

The maximum number of workers you can define are 299 for C<G.1X>, and
149 for C<G.2X>.


=head2 PrivateAddress => Str

  A private IP address to access the C<DevEndpoint> within a VPC if the
C<DevEndpoint> is created within one. The C<PrivateAddress> field is
present only when you create the C<DevEndpoint> within your VPC.


=head2 PublicAddress => Str

  The public IP address used by this C<DevEndpoint>. The C<PublicAddress>
field is present only when you create a non-virtual private cloud (VPC)
C<DevEndpoint>.


=head2 PublicKey => Str

  The public key to be used by this C<DevEndpoint> for authentication.
This attribute is provided for backward compatibility because the
recommended attribute to use is public keys.


=head2 PublicKeys => ArrayRef[Str|Undef]

  A list of public keys to be used by the C<DevEndpoints> for
authentication. Using this attribute is preferred over a single public
key because the public keys allow you to have a different private key
per client.

If you previously created an endpoint with a public key, you must
remove that key to be able to set a list of public keys. Call the
C<UpdateDevEndpoint> API operation with the public key content in the
C<deletePublicKeys> attribute, and the list of new keys in the
C<addPublicKeys> attribute.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role used in this
C<DevEndpoint>.


=head2 SecurityConfiguration => Str

  The name of the C<SecurityConfiguration> structure to be used with this
C<DevEndpoint>.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  A list of security group identifiers used in this C<DevEndpoint>.


=head2 Status => Str

  The current status of this C<DevEndpoint>.


=head2 SubnetId => Str

  The subnet ID for this C<DevEndpoint>.


=head2 VpcId => Str

  The ID of the virtual private cloud (VPC) used by this C<DevEndpoint>.


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



=head2 YarnEndpointAddress => Str

  The YARN endpoint address used by this C<DevEndpoint>.


=head2 ZeppelinRemoteSparkInterpreterPort => Int

  The Apache Zeppelin port for the remote Apache Spark interpreter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

