package Paws::Pricing::Filter;
  use Moose;
  has Field => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pricing::Filter object:

  $service_obj->Method(Att1 => { Field => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pricing::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Field

=head1 DESCRIPTION

The constraints that you want all returned products to match.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Field => Str

  The product metadata field that you want to filter on. You can filter
by just the service code to see all products for a specific service,
filter by just the attribute name to see a specific attribute for
multiple services, or use both a service code and an attribute name to
retrieve only products that match both fields.

Valid values include: C<ServiceCode>, and all attribute names

For example, you can filter by the C<AmazonEC2> service code and the
C<volumeType> attribute name to get the prices for only Amazon EC2
volumes.


=head2 B<REQUIRED> Type => Str

  The type of filter that you want to use.

Valid values are: C<TERM_MATCH>. C<TERM_MATCH> returns only products
that match both the given filter field and the given value.


=head2 B<REQUIRED> Value => Str

  The service code or attribute value that you want to filter by. If you
are filtering by service code this is the actual service code, such as
C<AmazonEC2>. If you are filtering by attribute name, this is the
attribute value that you want the returned products to match, such as a
C<Provisioned IOPS> volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pricing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

