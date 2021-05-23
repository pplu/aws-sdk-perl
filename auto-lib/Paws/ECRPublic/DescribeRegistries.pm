
package Paws::ECRPublic::DescribeRegistries;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegistries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECRPublic::DescribeRegistriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::DescribeRegistries - Arguments for method DescribeRegistries on L<Paws::ECRPublic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegistries on the
L<Amazon Elastic Container Registry Public|Paws::ECRPublic> service. Use the attributes of this class
as arguments to method DescribeRegistries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegistries.

=head1 SYNOPSIS

    my $api.ecr-public = Paws->service('ECRPublic');
    my $DescribeRegistriesResponse = $api . ecr-public->DescribeRegistries(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken  = $DescribeRegistriesResponse->NextToken;
    my $Registries = $DescribeRegistriesResponse->Registries;

    # Returns a L<Paws::ECRPublic::DescribeRegistriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public/DescribeRegistries>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of repository results returned by
C<DescribeRegistries> in paginated output. When this parameter is used,
C<DescribeRegistries> only returns C<maxResults> results in a single
page along with a C<nextToken> response element. The remaining results
of the initial request can be seen by sending another
C<DescribeRegistries> request with the returned C<nextToken> value.
This value can be between 1 and 1000. If this parameter is not used,
then C<DescribeRegistries> returns up to 100 results and a C<nextToken>
value, if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeRegistries> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.
This value is C<null> when there are no more results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRegistries in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

