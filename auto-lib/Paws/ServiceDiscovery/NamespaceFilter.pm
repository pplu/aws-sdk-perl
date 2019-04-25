package Paws::ServiceDiscovery::NamespaceFilter;
  use Moose;
  has Condition => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::NamespaceFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::NamespaceFilter object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::NamespaceFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

A complex type that identifies the namespaces that you want to list.
You can choose to list public or private namespaces.

=head1 ATTRIBUTES


=head2 Condition => Str

  The operator that you want to use to determine whether
C<ListNamespaces> returns a namespace. Valid values for C<condition>
include:

=over

=item *

C<EQ>: When you specify C<EQ> for the condition, you can choose to list
only public namespaces or private namespaces, but not both. C<EQ> is
the default condition and can be omitted.

=item *

C<IN>: When you specify C<IN> for the condition, you can choose to list
public namespaces, private namespaces, or both.

=item *

C<BETWEEN>: Not applicable

=back



=head2 B<REQUIRED> Name => Str

  Specify C<TYPE>.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

  If you specify C<EQ> for C<Condition>, specify either C<DNS_PUBLIC> or
C<DNS_PRIVATE>.

If you specify C<IN> for C<Condition>, you can specify C<DNS_PUBLIC>,
C<DNS_PRIVATE>, or both.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

