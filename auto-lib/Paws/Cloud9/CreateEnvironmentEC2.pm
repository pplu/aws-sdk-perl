
package Paws::Cloud9::CreateEnvironmentEC2;
  use Moose;
  has AutomaticStopTimeMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'automaticStopTimeMinutes' );
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceType' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has OwnerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerArn' );
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'subnetId' );

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
    my $CreateEnvironmentEC2Result = $cloud9->CreateEnvironmentEC2(
      InstanceType             => 'MyInstanceType',
      Name                     => 'MyEnvironmentName',
      AutomaticStopTimeMinutes => 1,                             # OPTIONAL
      ClientRequestToken       => 'MyClientRequestToken',        # OPTIONAL
      Description              => 'MyEnvironmentDescription',    # OPTIONAL
      OwnerArn                 => 'MyUserArn',                   # OPTIONAL
      SubnetId                 => 'MySubnetId',                  # OPTIONAL
    );

    # Results:
    my $EnvironmentId = $CreateEnvironmentEC2Result->EnvironmentId;

    # Returns a L<Paws::Cloud9::CreateEnvironmentEC2Result> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloud9/CreateEnvironmentEC2>

=head1 ATTRIBUTES


=head2 AutomaticStopTimeMinutes => Int

The number of minutes until the running instance is shut down after the
environment has last been used.



=head2 ClientRequestToken => Str

A unique, case-sensitive string that helps AWS Cloud9 to ensure this
operation completes no more than one time.

For more information, see Client Tokens
(http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html)
in the I<Amazon EC2 API Reference>.



=head2 Description => Str

The description of the environment to create.



=head2 B<REQUIRED> InstanceType => Str

The type of instance to connect to the environment (for example,
C<t2.micro>).



=head2 B<REQUIRED> Name => Str

The name of the environment to create.

This name is visible to other AWS IAM users in the same AWS account.



=head2 OwnerArn => Str

The Amazon Resource Name (ARN) of the environment owner. This ARN can
be the ARN of any AWS IAM principal. If this value is not specified,
the ARN defaults to this environment's creator.



=head2 SubnetId => Str

The ID of the subnet in Amazon VPC that AWS Cloud9 will use to
communicate with the Amazon EC2 instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironmentEC2 in L<Paws::Cloud9>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

