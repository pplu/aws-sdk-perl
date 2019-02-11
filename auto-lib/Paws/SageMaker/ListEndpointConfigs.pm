
package Paws::SageMaker::ListEndpointConfigs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpointConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListEndpointConfigsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListEndpointConfigs - Arguments for method ListEndpointConfigs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEndpointConfigs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListEndpointConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEndpointConfigs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListEndpointConfigsOutput = $api . sagemaker->ListEndpointConfigs(
      CreationTimeAfter  => '1970-01-01T01:00:00',             # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',             # OPTIONAL
      MaxResults         => 1,                                 # OPTIONAL
      NameContains       => 'MyEndpointConfigNameContains',    # OPTIONAL
      NextToken          => 'MyPaginationToken',               # OPTIONAL
      SortBy             => 'Name',                            # OPTIONAL
      SortOrder          => 'Ascending',                       # OPTIONAL
    );

    # Results:
    my $EndpointConfigs = $ListEndpointConfigsOutput->EndpointConfigs;
    my $NextToken       = $ListEndpointConfigsOutput->NextToken;

    # Returns a L<Paws::SageMaker::ListEndpointConfigsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListEndpointConfigs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

A filter that returns only endpoint configurations created after the
specified time (timestamp).



=head2 CreationTimeBefore => Str

A filter that returns only endpoint configurations created before the
specified time (timestamp).



=head2 MaxResults => Int

The maximum number of training jobs to return in the response.



=head2 NameContains => Str

A string in the endpoint configuration name. This filter returns only
endpoint configurations whose name contains the specified string.



=head2 NextToken => Str

If the result of the previous C<ListEndpointConfig> request was
truncated, the response includes a C<NextToken>. To retrieve the next
set of endpoint configurations, use the token in the next request.



=head2 SortBy => Str

The field to sort results by. The default is C<CreationTime>.

Valid values are: C<"Name">, C<"CreationTime">

=head2 SortOrder => Str

The sort order for results. The default is C<Ascending>.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEndpointConfigs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

