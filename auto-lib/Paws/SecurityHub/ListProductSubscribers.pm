
package Paws::SecurityHub::ListProductSubscribers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has ProductArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ProductArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProductSubscribers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/productSubscribers/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::ListProductSubscribersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListProductSubscribers - Arguments for method ListProductSubscribers on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProductSubscribers on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method ListProductSubscribers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProductSubscribers.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $ListProductSubscribersResponse = $securityhub->ListProductSubscribers(
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyNextToken',         # OPTIONAL
      ProductArn => 'MyNonEmptyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListProductSubscribersResponse->NextToken;
    my $ProductSubscribers =
      $ListProductSubscribersResponse->ProductSubscribers;

    # Returns a L<Paws::SecurityHub::ListProductSubscribersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/ListProductSubscribers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token that is required for pagination.



=head2 ProductArn => Str

The ARN of the product.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProductSubscribers in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

