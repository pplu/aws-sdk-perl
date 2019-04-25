package Paws::ServiceDiscovery::ServiceFilter;
  use Moose;
  has Condition => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::ServiceFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::ServiceFilter object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::ServiceFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

A complex type that lets you specify the namespaces that you want to
list services for.

=head1 ATTRIBUTES


=head2 Condition => Str

  The operator that you want to use to determine whether a service is
returned by C<ListServices>. Valid values for C<Condition> include the
following:

=over

=item *

C<EQ>: When you specify C<EQ>, specify one namespace ID for C<Values>.
C<EQ> is the default condition and can be omitted.

=item *

C<IN>: When you specify C<IN>, specify a list of the IDs for the
namespaces that you want C<ListServices> to return a list of services
for.

=item *

C<BETWEEN>: Not applicable.

=back



=head2 B<REQUIRED> Name => Str

  Specify C<NAMESPACE_ID>.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  The values that are applicable to the value that you specify for
C<Condition> to filter the list of services.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

