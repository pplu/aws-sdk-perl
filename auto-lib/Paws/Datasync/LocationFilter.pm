# Generated by default/object.tt
package Paws::Datasync::LocationFilter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Operator => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::LocationFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::LocationFilter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::LocationFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

You can use API filters to narrow down the list of resources returned
by C<ListLocations>. For example, to retrieve all your Amazon S3
locations, you can use C<ListLocations> with filter name C<LocationType
S3> and C<Operator Equals>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the filter being used. Each API call supports a list of
filters that are available for it (for example, C<LocationType> for
C<ListLocations>).


=head2 B<REQUIRED> Operator => Str

The operator that is used to compare filter values (for example,
C<Equals> or C<Contains>). For more about API filtering operators, see
query-resources.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

The values that you want to filter for. For example, you might want to
display only Amazon S3 locations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

