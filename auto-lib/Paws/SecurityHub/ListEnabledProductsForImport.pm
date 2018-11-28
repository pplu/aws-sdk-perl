
package Paws::SecurityHub::ListEnabledProductsForImport;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEnabledProductsForImport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/productSubscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::ListEnabledProductsForImportResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListEnabledProductsForImport - Arguments for method ListEnabledProductsForImport on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEnabledProductsForImport on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method ListEnabledProductsForImport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEnabledProductsForImport.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $ListEnabledProductsForImportResponse =
      $securityhub->ListEnabledProductsForImport(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListEnabledProductsForImportResponse->NextToken;
    my $ProductSubscriptions =
      $ListEnabledProductsForImportResponse->ProductSubscriptions;

  # Returns a L<Paws::SecurityHub::ListEnabledProductsForImportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/ListEnabledProductsForImport>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Indicates the maximum number of items that you want in the response.



=head2 NextToken => Str

Paginates results. Set the value of this parameter to NULL on your
first call to the ListEnabledProductsForImport operation. For
subsequent calls to the operation, fill nextToken in the request with
the value of NextToken from the previous response to continue listing
data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEnabledProductsForImport in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

