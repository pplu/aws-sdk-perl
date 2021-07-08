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
  sub CreateHost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::CreateHost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::DeleteConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteHost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::DeleteHost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::GetConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::GetHost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::ListConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::ListHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateHost {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::CodeStarConnections::UpdateHost', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateConnection CreateHost DeleteConnection DeleteHost GetConnection GetHost ListConnections ListHosts ListTagsForResource TagResource UntagResource UpdateHost / }

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

AWS CodeStar Connections

This AWS CodeStar Connections API Reference provides descriptions and
usage examples of the operations and data types for the AWS CodeStar
Connections API. You can use the connections API to work with
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
provider type is the Bitbucket app. When you create a connection, you
can choose an existing installation or create one.

When you want to create a connection to an installed provider type such
as GitHub Enterprise Server, you create a I<host> for your connections.

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

You can work with hosts by calling:

=over

=item *

CreateHost, which creates a host that represents the infrastructure
where your provider is installed.

=item *

DeleteHost, which deletes the specified host.

=item *

GetHost, which returns information about the host, including the setup
status.

=item *

ListHosts, which lists the hosts associated with your account.

=back

You can work with tags in AWS CodeStar Connections by calling the
following:

=over

=item *

ListTagsForResource, which gets information about AWS tags for a
specified Amazon Resource Name (ARN) in AWS CodeStar Connections.

=item *

TagResource, which adds or updates tags for a resource in AWS CodeStar
Connections.

=item *

UntagResource, which removes tags for a resource in AWS CodeStar
Connections.

=back

For information about how to use AWS CodeStar Connections, see the
Developer Tools User Guide
(https://docs.aws.amazon.com/dtconsole/latest/userguide/welcome-connections.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections-2019-12-01>


=head1 METHODS

=head2 CreateConnection

=over

=item ConnectionName => Str

=item [HostArn => Str]

=item [ProviderType => Str]

=item [Tags => ArrayRef[L<Paws::CodeStarConnections::Tag>]]


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::CreateConnection>

Returns: a L<Paws::CodeStarConnections::CreateConnectionOutput> instance

Creates a connection that can then be given to other AWS services like
CodePipeline so that it can access third-party code repositories. The
connection is in pending status until the third-party connection
handshake is completed from the console.


=head2 CreateHost

=over

=item Name => Str

=item ProviderEndpoint => Str

=item ProviderType => Str

=item [Tags => ArrayRef[L<Paws::CodeStarConnections::Tag>]]

=item [VpcConfiguration => L<Paws::CodeStarConnections::VpcConfiguration>]


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::CreateHost>

Returns: a L<Paws::CodeStarConnections::CreateHostOutput> instance

Creates a resource that represents the infrastructure where a
third-party provider is installed. The host is used when you create
connections to an installed third-party provider type, such as GitHub
Enterprise Server. You create one host for all connections to that
provider.

A host created through the CLI or the SDK is in `PENDING` status by
default. You can make its status `AVAILABLE` by setting up the host in
the console.


=head2 DeleteConnection

=over

=item ConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::DeleteConnection>

Returns: a L<Paws::CodeStarConnections::DeleteConnectionOutput> instance

The connection to be deleted.


=head2 DeleteHost

=over

=item HostArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::DeleteHost>

Returns: a L<Paws::CodeStarConnections::DeleteHostOutput> instance

The host to be deleted. Before you delete a host, all connections
associated to the host must be deleted.

A host cannot be deleted if it is in the VPC_CONFIG_INITIALIZING or
VPC_CONFIG_DELETING state.


=head2 GetConnection

=over

=item ConnectionArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::GetConnection>

Returns: a L<Paws::CodeStarConnections::GetConnectionOutput> instance

Returns the connection ARN and details such as status, owner, and
provider type.


=head2 GetHost

=over

=item HostArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::GetHost>

Returns: a L<Paws::CodeStarConnections::GetHostOutput> instance

Returns the host ARN and details such as status, provider type,
endpoint, and, if applicable, the VPC configuration.


=head2 ListConnections

=over

=item [HostArnFilter => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProviderTypeFilter => Str]


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::ListConnections>

Returns: a L<Paws::CodeStarConnections::ListConnectionsOutput> instance

Lists the connections associated with your account.


=head2 ListHosts

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::ListHosts>

Returns: a L<Paws::CodeStarConnections::ListHostsOutput> instance

Lists the hosts associated with your account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::ListTagsForResource>

Returns: a L<Paws::CodeStarConnections::ListTagsForResourceOutput> instance

Gets the set of key-value pairs (metadata) that are used to manage the
resource.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::CodeStarConnections::Tag>]


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::TagResource>

Returns: a L<Paws::CodeStarConnections::TagResourceOutput> instance

Adds to or modifies the tags of the given resource. Tags are metadata
that can be used to manage a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::UntagResource>

Returns: a L<Paws::CodeStarConnections::UntagResourceOutput> instance

Removes tags from an AWS resource.


=head2 UpdateHost

=over

=item HostArn => Str

=item [ProviderEndpoint => Str]

=item [VpcConfiguration => L<Paws::CodeStarConnections::VpcConfiguration>]


=back

Each argument is described in detail in: L<Paws::CodeStarConnections::UpdateHost>

Returns: a L<Paws::CodeStarConnections::UpdateHostOutput> instance

Updates a specified host with the provided configurations.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

