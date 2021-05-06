package Paws::ServiceCatalog::ServiceActionDefinitionMap;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has AssumeRole => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ServiceActionDefinitionMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ServiceActionDefinitionMap object:

  $service_obj->Method(Att1 => { AssumeRole => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ServiceActionDefinitionMap object:

  $result = $service_obj->Method(...);
  $result->Att1->AssumeRole

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssumeRole => Str


=head2 Name => Str


=head2 Parameters => Str


=head2 Version => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

