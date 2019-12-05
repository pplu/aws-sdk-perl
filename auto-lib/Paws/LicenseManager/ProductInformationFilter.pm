package Paws::LicenseManager::ProductInformationFilter;
  use Moose;
  has ProductInformationFilterComparator => (is => 'ro', isa => 'Str', required => 1);
  has ProductInformationFilterName => (is => 'ro', isa => 'Str', required => 1);
  has ProductInformationFilterValue => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ProductInformationFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::ProductInformationFilter object:

  $service_obj->Method(Att1 => { ProductInformationFilterComparator => $value, ..., ProductInformationFilterValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::ProductInformationFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->ProductInformationFilterComparator

=head1 DESCRIPTION

Describes product information filters.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProductInformationFilterComparator => Str

  Logical operator.


=head2 B<REQUIRED> ProductInformationFilterName => Str

  Filter name.


=head2 B<REQUIRED> ProductInformationFilterValue => ArrayRef[Str|Undef]

  Filter value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

