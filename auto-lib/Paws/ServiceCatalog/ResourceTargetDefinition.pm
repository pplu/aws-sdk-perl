package Paws::ServiceCatalog::ResourceTargetDefinition;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RequiresRecreation => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ResourceTargetDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ResourceTargetDefinition object:

  $service_obj->Method(Att1 => { Attribute => $value, ..., RequiresRecreation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ResourceTargetDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->Attribute

=head1 DESCRIPTION

Information about a change to a resource attribute.

=head1 ATTRIBUTES


=head2 Attribute => Str

  The attribute to be changed.


=head2 Name => Str

  If the attribute is C<Properties>, the value is the name of the
property. Otherwise, the value is null.


=head2 RequiresRecreation => Str

  If the attribute is C<Properties>, indicates whether a change to this
property causes the resource to be re-created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

