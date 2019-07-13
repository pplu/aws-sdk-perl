
package Paws::MediaStoreData::ListItems;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has Path => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Path');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListItems');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStoreData::ListItemsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::ListItems - Arguments for method ListItems on L<Paws::MediaStoreData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListItems on the
L<AWS Elemental MediaStore Data Plane|Paws::MediaStoreData> service. Use the attributes of this class
as arguments to method ListItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListItems.

=head1 SYNOPSIS

    my $data.mediastore = Paws->service('MediaStoreData');
    my $ListItemsResponse = $data . mediastore->ListItems(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Path       => 'MyListPathNaming',     # OPTIONAL
    );

    # Results:
    my $Items     = $ListItemsResponse->Items;
    my $NextToken = $ListItemsResponse->NextToken;

    # Returns a L<Paws::MediaStoreData::ListItemsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.mediastore/ListItems>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per API request. For example,
you submit a C<ListItems> request with C<MaxResults> set at 500.
Although 2,000 items match your request, the service returns no more
than the first 500 items. (The service also returns a C<NextToken>
value that you can use to fetch the next batch of results.) The service
might return fewer results than the C<MaxResults> value.

If C<MaxResults> is not included in the request, the service defaults
to pagination with a maximum of 1,000 results per page.



=head2 NextToken => Str

The token that identifies which batch of results that you want to see.
For example, you submit a C<ListItems> request with C<MaxResults> set
at 500. The service returns the first batch of results (up to 500) and
a C<NextToken> value. To see the next batch of results, you can submit
the C<ListItems> request a second time and specify the C<NextToken>
value.

Tokens expire after 15 minutes.



=head2 Path => Str

The path in the container from which to retrieve items. Format:
E<lt>folder nameE<gt>/E<lt>folder nameE<gt>/E<lt>file nameE<gt>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListItems in L<Paws::MediaStoreData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

