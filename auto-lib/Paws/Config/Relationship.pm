package Paws::Config::Relationship;
  use Moose;
  has relationshipName => (is => 'ro', isa => 'Str');
  has resourceId => (is => 'ro', isa => 'Str');
  has resourceName => (is => 'ro', isa => 'Str');
  has resourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::Relationship

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::Relationship object:

  $service_obj->Method(Att1 => { relationshipName => $value, ..., resourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::Relationship object:

  $result = $service_obj->Method(...);
  $result->Att1->relationshipName

=head1 DESCRIPTION

The relationship of the related resource to the main resource.

=head1 ATTRIBUTES

=head2 relationshipName => Str

  The type of relationship with the related resource.

=head2 resourceId => Str

  The ID of the related resource (for example, C<sg-xxxxxx>).

=head2 resourceName => Str

  The custom name of the related resource, if available.

=head2 resourceType => Str

  The resource type of the related resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

