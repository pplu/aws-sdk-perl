
package Paws::Config::ListStoredQueries;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStoredQueries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::ListStoredQueriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListStoredQueries - Arguments for method ListStoredQueries on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStoredQueries on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method ListStoredQueries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStoredQueries.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $ListStoredQueriesResponse = $config->ListStoredQueries(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken           = $ListStoredQueriesResponse->NextToken;
    my $StoredQueryMetadata = $ListStoredQueriesResponse->StoredQueryMetadata;

    # Returns a L<Paws::Config::ListStoredQueriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/ListStoredQueries>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned with a single call.



=head2 NextToken => Str

The nextToken string returned in a previous request that you use to
request the next page of results in a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStoredQueries in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

