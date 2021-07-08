
package Paws::CloudWatchEvents::ListConnections;
  use Moose;
  has ConnectionState => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NamePrefix => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListConnectionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListConnections - Arguments for method ListConnections on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnections on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnections.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListConnectionsResponse = $events->ListConnections(
      ConnectionState => 'CREATING',            # OPTIONAL
      Limit           => 1,                     # OPTIONAL
      NamePrefix      => 'MyConnectionName',    # OPTIONAL
      NextToken       => 'MyNextToken',         # OPTIONAL
    );

    # Results:
    my $Connections = $ListConnectionsResponse->Connections;
    my $NextToken   = $ListConnectionsResponse->NextToken;

    # Returns a L<Paws::CloudWatchEvents::ListConnectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/ListConnections>

=head1 ATTRIBUTES


=head2 ConnectionState => Str

The state of the connection.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"AUTHORIZED">, C<"DEAUTHORIZED">, C<"AUTHORIZING">, C<"DEAUTHORIZING">

=head2 Limit => Int

The maximum number of connections to return.



=head2 NamePrefix => Str

A name prefix to filter results returned. Only connections with a name
that starts with the prefix are returned.



=head2 NextToken => Str

The token returned by a previous call to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnections in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

