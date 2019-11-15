package Paws::MarketplaceCatalog::Entity;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::Entity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceCatalog::Entity object:

  $service_obj->Method(Att1 => { Identifier => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceCatalog::Entity object:

  $result = $service_obj->Method(...);
  $result->Att1->Identifier

=head1 DESCRIPTION

A product entity contains data that describes your product, its
supported features, and how it can be used or launched by your
customer.

=head1 ATTRIBUTES


=head2 Identifier => Str

  The identifier for the entity.


=head2 B<REQUIRED> Type => Str

  The type of entity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

