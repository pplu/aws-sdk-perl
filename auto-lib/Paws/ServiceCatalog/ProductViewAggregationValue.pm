package Paws::ServiceCatalog::ProductViewAggregationValue;
  use Moose;
  has ApproximateCount => (is => 'ro', isa => 'Int');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProductViewAggregationValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProductViewAggregationValue object:

  $service_obj->Method(Att1 => { ApproximateCount => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProductViewAggregationValue object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproximateCount

=head1 DESCRIPTION

A single product view aggregation value/count pair, containing metadata
about each product to which the calling user has access.

=head1 ATTRIBUTES


=head2 ApproximateCount => Int

  An approximate count of the products that match the value.


=head2 Value => Str

  The value of the product view aggregation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

