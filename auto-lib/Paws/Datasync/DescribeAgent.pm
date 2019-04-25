
package Paws::Datasync::DescribeAgent;
  use Moose;
  has AgentArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAgent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DescribeAgentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeAgent - Arguments for method DescribeAgent on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAgent on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DescribeAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAgent.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DescribeAgentResponse = $datasync->DescribeAgent(
      AgentArn => 'MyAgentArn',

    );

    # Results:
    my $AgentArn           = $DescribeAgentResponse->AgentArn;
    my $CreationTime       = $DescribeAgentResponse->CreationTime;
    my $LastConnectionTime = $DescribeAgentResponse->LastConnectionTime;
    my $Name               = $DescribeAgentResponse->Name;
    my $Status             = $DescribeAgentResponse->Status;

    # Returns a L<Paws::Datasync::DescribeAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DescribeAgent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentArn => Str

The Amazon Resource Name (ARN) of the agent to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAgent in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

