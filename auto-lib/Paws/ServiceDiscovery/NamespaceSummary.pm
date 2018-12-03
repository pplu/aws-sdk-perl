package Paws::ServiceDiscovery::NamespaceSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreateDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Paws::ServiceDiscovery::NamespaceProperties');
  has ServiceCount => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::NamespaceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::NamespaceSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::NamespaceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A complex type that contains information about a namespace.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) that AWS Cloud Map assigns to the
namespace when you create it.


=head2 CreateDate => Str

  The date and time that the namespace was created.


=head2 Description => Str

  A description for the namespace.


=head2 Id => Str

  The ID of the namespace.


=head2 Name => Str

  The name of the namespace. When you create a namespace, AWS Cloud Map
automatically creates a Route 53 hosted zone that has the same name as
the namespace.


=head2 Properties => L<Paws::ServiceDiscovery::NamespaceProperties>

  


=head2 ServiceCount => Int

  The number of services that were created using the namespace.


=head2 Type => Str

  The type of the namespace, either public or private.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

