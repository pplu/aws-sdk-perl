package Paws::LicenseManager::Filter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::Filter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A filter name and value pair that is used to return a more specific
list of results from a describe operation. Filters can be used to match
a set of resources by specific criteria, such as tags, attributes, or
IDs. The filters supported by a C<Describe> operation are documented
with the C<Describe> operation.

=head1 ATTRIBUTES


=head2 Name => Str

  Name of the filter. Filter names are case-sensitive.


=head2 Values => ArrayRef[Str|Undef]

  One or more filter values. Filter values are case-sensitive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

