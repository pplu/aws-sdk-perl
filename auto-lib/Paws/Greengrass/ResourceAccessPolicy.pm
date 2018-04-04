package Paws::Greengrass::ResourceAccessPolicy;
  use Moose;
  has Permission => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ResourceAccessPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ResourceAccessPolicy object:

  $service_obj->Method(Att1 => { Permission => $value, ..., ResourceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ResourceAccessPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Permission

=head1 DESCRIPTION

A policy used by the function to access a resource.

=head1 ATTRIBUTES


=head2 Permission => Str

  The permissions that the Lambda function has to the resource. Can be
one of ''rw'' (read/write) or ''ro'' (read-only).


=head2 ResourceId => Str

  The ID of the resource. (This ID is assigned to the resource when you
create the resource definiton.)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

