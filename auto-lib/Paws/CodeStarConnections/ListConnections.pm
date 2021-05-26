
package Paws::CodeStarConnections::ListConnections;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProviderTypeFilter => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarConnections::ListConnectionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::ListConnections - Arguments for method ListConnections on L<Paws::CodeStarConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnections on the
L<AWS CodeStar connections|Paws::CodeStarConnections> service. Use the attributes of this class
as arguments to method ListConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnections.

=head1 SYNOPSIS

    my $codestar-connections = Paws->service('CodeStarConnections');
    my $ListConnectionsOutput = $codestar -connections->ListConnections(
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      ProviderTypeFilter => 'Bitbucket',      # OPTIONAL
    );

    # Results:
    my $Connections = $ListConnectionsOutput->Connections;
    my $NextToken   = $ListConnectionsOutput->NextToken;

    # Returns a L<Paws::CodeStarConnections::ListConnectionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections/ListConnections>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token that was returned from the previous C<ListConnections> call,
which can be used to return the next set of connections in the list.



=head2 ProviderTypeFilter => Str

Filters the list of connections to those associated with a specified
provider, such as Bitbucket.

Valid values are: C<"Bitbucket">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnections in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

