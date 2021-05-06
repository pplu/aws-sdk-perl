
package Paws::ECS::DescribeCapacityProviders;
  use Moose;
  has CapacityProviders => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'capacityProviders' );
  has Include => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'include' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCapacityProviders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DescribeCapacityProvidersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DescribeCapacityProviders - Arguments for method DescribeCapacityProviders on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCapacityProviders on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DescribeCapacityProviders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCapacityProviders.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $DescribeCapacityProvidersResponse = $ecs->DescribeCapacityProviders(
      CapacityProviders => [ 'MyString', ... ],    # OPTIONAL
      Include => [
        'TAGS', ...                                # values: TAGS
      ],                                           # OPTIONAL
      MaxResults => 1,                             # OPTIONAL
      NextToken  => 'MyString',                    # OPTIONAL
    );

    # Results:
    my $CapacityProviders =
      $DescribeCapacityProvidersResponse->CapacityProviders;
    my $Failures  = $DescribeCapacityProvidersResponse->Failures;
    my $NextToken = $DescribeCapacityProvidersResponse->NextToken;

    # Returns a L<Paws::ECS::DescribeCapacityProvidersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DescribeCapacityProviders>

=head1 ATTRIBUTES


=head2 CapacityProviders => ArrayRef[Str|Undef]

The short name or full Amazon Resource Name (ARN) of one or more
capacity providers. Up to C<100> capacity providers can be described in
an action.



=head2 Include => ArrayRef[Str|Undef]

Specifies whether or not you want to see the resource tags for the
capacity provider. If C<TAGS> is specified, the tags are included in
the response. If this field is omitted, tags are not included in the
response.



=head2 MaxResults => Int

The maximum number of account setting results returned by
C<DescribeCapacityProviders> in paginated output. When this parameter
is used, C<DescribeCapacityProviders> only returns C<maxResults>
results in a single page along with a C<nextToken> response element.
The remaining results of the initial request can be seen by sending
another C<DescribeCapacityProviders> request with the returned
C<nextToken> value. This value can be between 1 and 10. If this
parameter is not used, then C<DescribeCapacityProviders> returns up to
10 results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<DescribeCapacityProviders> request where C<maxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<nextToken>
value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCapacityProviders in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

