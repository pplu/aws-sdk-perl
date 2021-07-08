
package Paws::CodeStarConnections::ListHosts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHosts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStarConnections::ListHostsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarConnections::ListHosts - Arguments for method ListHosts on L<Paws::CodeStarConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHosts on the
L<AWS CodeStar connections|Paws::CodeStarConnections> service. Use the attributes of this class
as arguments to method ListHosts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHosts.

=head1 SYNOPSIS

    my $codestar-connections = Paws->service('CodeStarConnections');
    my $ListHostsOutput = $codestar -connections->ListHosts(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Hosts     = $ListHostsOutput->Hosts;
    my $NextToken = $ListHostsOutput->NextToken;

    # Returns a L<Paws::CodeStarConnections::ListHostsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-connections/ListHosts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token that was returned from the previous C<ListHosts> call, which
can be used to return the next set of hosts in the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHosts in L<Paws::CodeStarConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

