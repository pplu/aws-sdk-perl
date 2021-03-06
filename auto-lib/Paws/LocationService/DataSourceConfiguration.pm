# Generated by default/object.tt
package Paws::LocationService::DataSourceConfiguration;
  use Moose;
  has IntendedUse => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DataSourceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::DataSourceConfiguration object:

  $service_obj->Method(Att1 => { IntendedUse => $value, ..., IntendedUse => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::DataSourceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->IntendedUse

=head1 DESCRIPTION

Specifies the data storage option chosen for requesting Places.

=head1 ATTRIBUTES


=head2 IntendedUse => Str

Specifies how the results of an operation will be stored by the caller.

Valid values include:

=over

=item *

C<SingleUse> specifies that the results won't be stored.

=item *

C<Storage> specifies that the result can be cached or stored in a
database.

Place index resources using HERE as a data provider can't be configured
to store results for locations in Japan when choosing C<Storage> for
the C<IntendedUse> parameter.

=back

Default value: C<SingleUse>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

