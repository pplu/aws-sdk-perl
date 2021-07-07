
package Paws::Cloud9::CreateEnvironmentEC2;
  use Moose;
  has AutomaticStopTimeMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'automaticStopTimeMinutes' );
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has ConnectionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionType' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has ImageId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageId' );
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has OwnerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerArn' );
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Cloud9::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentEC2');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Cloud9::CreateEnvironmentEC2Result');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Cloud9::CreateEnvironmentEC2 - Arguments for method CreateEnvironmentEC2 on L<Paws::Cloud9>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironmentEC2 on the
L<AWS Cloud9|Paws::Cloud9> service. Use the attributes of this class
as arguments to method CreateEnvironmentEC2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironmentEC2.

=head1 SYNOPSIS

    my $cloud9 = Paws->service('Cloud9');
    # CreateEnvironmentEC2
    my $CreateEnvironmentEC2Result = $cloud9->CreateEnvironmentEC2(
      'AutomaticStopTimeMinutes' => 60,
      'Description'              => 'This is my demonstration environment.',
      'InstanceType'             => 't2.micro',
      'Name'                     => 'my-demo-environment',
      'OwnerArn'                 => 'arn:aws:iam::123456789012:user/MyDemoUser',
      'SubnetId'                 => 'subnet-1fab8aEX'
    );

    # Results:
    my $environmentId = $CreateEnvironmentEC2Result->environmentId;

    # Returns a L<Paws::Cloud9::CreateEnvironmentEC2Result> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/CreateEnvironmentEC2>

=head1 ATTRIBUTES


=head2 AutomaticStopTimeMinutes => Int

The number of minutes until the running instance is shut down after the
environment has last been used.



=head2 ClientRequestToken => Str

A unique, case-sensitive string that helps Cloud9 to ensure this
operation completes no more than one time.

For more information, see Client Tokens
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 ConnectionType => Str

The connection type used for connecting to an Amazon EC2 environment.
Valid values are C<CONNECT_SSH> (default) and C<CONNECT_SSM> (connected
through Amazon EC2 Systems Manager).

For more information, see Accessing no-ingress EC2 instances with
Amazon EC2 Systems Manager
(https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html) in
the I<Cloud9 User Guide>.

Valid values are: C<"CONNECT_SSH">, C<"CONNECT_SSM">

=head2 Description => Str

The description of the environment to create.



=head2 ImageId => Str

The identifier for the Amazon Machine Image (AMI) that's used to create
the EC2 instance. To choose an AMI for the instance, you must specify a
valid AMI alias or a valid Amazon EC2 Systems Manager (SSM) path.

The default AMI is used if the parameter isn't explicitly assigned a
value in the request. Because Amazon Linux AMI has ended standard
support as of December 31, 2020, we recommend you choose Amazon Linux
2, which includes long term support through 2023.

B<AMI aliases>

=over

=item *

B<Amazon Linux (default): C<amazonlinux-1-x86_64>>

=item *

Amazon Linux 2: C<amazonlinux-2-x86_64>

=item *

Ubuntu 18.04: C<ubuntu-18.04-x86_64>

=back

B<SSM paths>

=over

=item *

B<Amazon Linux (default):
C<resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64>>

=item *

Amazon Linux 2:
C<resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64>

=item *

Ubuntu 18.04:
C<resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64>

=back




=head2 B<REQUIRED> InstanceType => Str

The type of instance to connect to the environment (for example,
C<t2.micro>).



=head2 B<REQUIRED> Name => Str

The name of the environment to create.

This name is visible to other IAM users in the same Amazon Web Services
account.



=head2 OwnerArn => Str

The Amazon Resource Name (ARN) of the environment owner. This ARN can
be the ARN of any IAM principal. If this value is not specified, the
ARN defaults to this environment's creator.



=head2 SubnetId => Str

The ID of the subnet in Amazon VPC that Cloud9 will use to communicate
with the Amazon EC2 instance.



=head2 Tags => ArrayRef[L<Paws::Cloud9::Tag>]

An array of key-value pairs that will be associated with the new Cloud9
development environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironmentEC2 in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

