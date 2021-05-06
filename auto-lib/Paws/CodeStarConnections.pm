package Paws::CodeStarConnections;
  use Moose;
  sub service { 'codestar-connections' }
  sub signing_name { 'codestar-connections' }
  sub version { '2019-12-01' }
  sub target_prefix { 'com.amazonaws.codestar.connections.CodeStar_connections_20191201' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::CreateConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::GetConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::ListConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateConnection DeleteConnection GetConnection ListConnections / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections - Perl Interface to AWS AWS CodeStar connections

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('CodeStarConnections');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

This AWS CodeStar Connections API Reference provides descriptions and
usage examples of the operations and data types for the AWS CodeStar
Connections API. You can use the Connections API to work with
connections and installations.

I<Connections> are configurations that you use to connect AWS resources
to external code repositories. Each connection is a resource that can
be given to services such as CodePipeline to connect to a third-party
repository such as Bitbucket. For example, you can add the connection
in CodePipeline so that it triggers your pipeline when a code change is
made to your third-party code repository. Each connection is named and
associated with a unique ARN that is used to reference the connection.

When you create a connection, the console initiates a third-party
connection handshake. I<Installations> are the apps that are used to
conduct this handshake. For example, the installation for the Bitbucket
provider type is the Bitbucket Cloud app. When you create a connection,
you can choose an existing installation or create one.

You can work with connections by calling:

=over

=item *

CreateConnection, which creates a uniquely named connection that can be
referenced by services such as CodePipeline.

=item *

DeleteConnection, which deletes the specified connection.

=item *

GetConnection, which returns information about the connection,
including the connection status.

=item *

ListConnections, which lists the connections associated with your
account.

=back

For information about how to use AWS CodeStar Connections, see the AWS
CodePipeline User Guide
(https://docs.aws.amazon.com/codepipeline/latest/userguide/welcome.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01>


=head1 METHODS

=head2 CreateConnection

=over

=item ConnectionName => Str

=item ProviderType => Str


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::CreateConnection>

Returns: a L<Paws::CodeStarConnections::CreateConnectionOutput> instance

Creates a connection that can then be given to other AWS services like
CodePipeline so that it can access third-party code repositories. The
connection is in pending status until the third-party connection
handshake is completed from the console.


=head2 DeleteConnection

=over

=item ConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::DeleteConnection>

Returns: a L<Paws::CodeStarConnections::DeleteConnectionOutput> instance

The connection to be deleted.


=head2 GetConnection

=over

=item ConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::GetConnection>

Returns: a L<Paws::CodeStarConnections::GetConnectionOutput> instance

Returns the connection ARN and details such as status, owner, and
provider type.


=head2 ListConnections

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProviderTypeFilter => Str]


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::ListConnections>

Returns: a L<Paws::CodeStarConnections::ListConnectionsOutput> instance

Lists the connections associated with your account.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

