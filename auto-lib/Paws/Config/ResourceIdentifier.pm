package Paws::Config::ResourceIdentifier;
  use Moose;
  has ResourceDeletionTime => (is => 'ro', isa => 'Str', request_name => 'resourceDeletionTime', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceName => (is => 'ro', isa => 'Str', request_name => 'resourceName', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ResourceIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ResourceIdentifier object:

  $service_obj->Method(Att1 => { ResourceDeletionTime => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ResourceIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceDeletionTime

=head1 DESCRIPTION

The details that identify a resource that is discovered by AWS Config,
including the resource type, ID, and (if available) the custom resource
name.

=head1 ATTRIBUTES


=head2 ResourceDeletionTime => Str

  The time that the resource was deleted.


=head2 ResourceId => Str

  The ID of the resource (for example, C<sg-xxxxxx>).


=head2 ResourceName => Str

  The custom name of the resource (if available).


=head2 ResourceType => Str

  The type of resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

