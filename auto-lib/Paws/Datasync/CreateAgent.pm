
package Paws::Datasync::CreateAgent;
  use Moose;
  has ActivationKey => (is => 'ro', isa => 'Str', required => 1);
  has AgentName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::TagListEntry]');

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
      ActivationKey => 'MyActivationKey',
      AgentName     => 'MyTagValue',        # OPTIONAL
      Tags          => [
        {
          Key   => 'MyTagKey',              # min: 1, max: 256; OPTIONAL
          Value => 'MyTagValue',            # min: 1, max: 256
        },
        ...
      ],                                    # OPTIONAL
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
the actual configuration of your agent. For more information, see
Activating a Sync Agent
(https://docs.aws.amazon.com/sync-service/latest/userguide/working-with-sync-agents.html#activating-sync-agent)
in the I<AWS DataSync User Guide.>



=head2 AgentName => Str

The name you configured for your agent. This value is a text reference
that is used to identify the agent in the console.



=head2 Tags => ArrayRef[L<Paws::Datasync::TagListEntry>]

The key-value pair that represents the tag you want to associate with
the agent. The value can be an empty string. This value helps you
manage, filter, and search for your agents.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAgent in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

