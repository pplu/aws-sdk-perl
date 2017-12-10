
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
AWS Elemental MediaStore Data Plane service. Use the attributes of this class
as arguments to method ListItems.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListItems.

As an example:

  $service_obj->ListItems(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum results to return. The service might return fewer results.



=head2 NextToken => Str

The C<NextToken> received in the C<ListItemsResponse> for the same
container and path. Tokens expire after 15 minutes.



=head2 Path => Str

The path in the container from which to retrieve items. Format:
E<lt>folder nameE<gt>/E<lt>folder nameE<gt>/E<lt>file nameE<gt>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListItems in L<Paws::MediaStoreData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

