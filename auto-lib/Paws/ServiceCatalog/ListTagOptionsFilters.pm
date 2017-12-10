package Paws::ServiceCatalog::ListTagOptionsFilters;
  use Moose;
  has Active => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListTagOptionsFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ListTagOptionsFilters object:

  $service_obj->Method(Att1 => { Active => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ListTagOptionsFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->Active

=head1 DESCRIPTION

Filters to use when listing TagOptions.

=head1 ATTRIBUTES


=head2 Active => Bool

  The active state.


=head2 Key => Str

  The TagOption key.


=head2 Value => Str

  The TagOption value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

