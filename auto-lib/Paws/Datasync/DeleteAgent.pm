
package Paws::Datasync::DeleteAgent;
  use Moose;
  has AgentArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAgent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Datasync::DeleteAgentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DeleteAgent - Arguments for method DeleteAgent on L<Paws::Datasync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAgent on the
L<AWS DataSync|Paws::Datasync> service. Use the attributes of this class
as arguments to method DeleteAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAgent.

=head1 SYNOPSIS

    my $datasync = Paws->service('Datasync');
    my $DeleteAgentResponse = $datasync->DeleteAgent(
      AgentArn => 'MyAgentArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datasync/DeleteAgent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentArn => Str

The Amazon Resource Name (ARN) of the agent to delete. Use the
C<ListAgents> operation to return a list of agents for your account and
AWS Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAgent in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

