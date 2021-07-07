
package Paws::Datasync::CreateAgent;
  use Moose;
  has ActivationKey => (is => 'ro', isa => 'Str', required => 1);
  has AgentName => (is => 'ro', isa => 'Str');
  has SecurityGroupArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');
  has VpcEndpointId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAgent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::CreateAgentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateAgent - Arguments for method CreateAgent on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAgent on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method CreateAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAgent.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $CreateAgentResponse = $datasync->CreateAgent(
      ActivationKey     => 'MyActivationKey',
      AgentName         => 'MyTagValue',        # OPTIONAL
      SecurityGroupArns => [
        'MyEc2SecurityGroupArn', ...            # max: 128
      ],    # OPTIONAL
      SubnetArns => [
        'MyEc2SubnetArn', ...    # max: 128
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 256
          Value => 'MyTagValue',    # min: 1, max: 256
        },
        ...
      ],    # OPTIONAL
      VpcEndpointId => 'MyVpcEndpointId',    # OPTIONAL
    );

    # Results:
    my $AgentArn = $CreateAgentResponse->AgentArn;

    # Returns a L<Paws::Datasync::CreateAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/CreateAgent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivationKey => Str

Your agent activation key. You can get the activation key either by
sending an HTTP GET request with redirects that enable you to get the
agent IP address (port 80). Alternatively, you can get it from the AWS
DataSync console.

The redirect URL returned in the response provides you the activation
key for your agent in the query string parameter C<activationKey>. It
might also include other activation-related parameters; however, these
are merely defaults. The arguments you pass to this API call determine
the actual configuration of your agent.

For more information, see Activating an Agent in the I<AWS DataSync
User Guide.>



=head2 AgentName => Str

The name you configured for your agent. This value is a text reference
that is used to identify the agent in the console.



=head2 SecurityGroupArns => ArrayRef[Str|Undef]

The ARNs of the security groups used to protect your data transfer task
subnets. See CreateAgentRequest$SubnetArns.



=head2 SubnetArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the subnets in which DataSync will
create elastic network interfaces for each data transfer task. The
agent that runs a task must be private. When you start a task that is
associated with an agent created in a VPC, or one that has access to an
IP address in a VPC, then the task is also private. In this case,
DataSync creates four network interfaces for each task in your subnet.
For a data transfer to work, the agent must be able to route to all
these four network interfaces.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents the tag that you want to associate
with the agent. The value can be an empty string. This value helps you
manage, filter, and search for your agents.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @.



=head2 VpcEndpointId => Str

The ID of the VPC (virtual private cloud) endpoint that the agent has
access to. This is the client-side VPC endpoint, also called a
PrivateLink. If you don't have a PrivateLink VPC endpoint, see Creating
a VPC Endpoint Service Configuration
(https://docs.aws.amazon.com/vpc/latest/userguide/endpoint-service.html#create-endpoint-service)
in the Amazon VPC User Guide.

VPC endpoint ID looks like this: C<vpce-01234d5aff67890e1>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAgent in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

