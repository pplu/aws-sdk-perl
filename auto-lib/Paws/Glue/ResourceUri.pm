package Paws::Glue::ResourceUri;
  use Moose;
  has ResourceType => (is => 'ro', isa => 'Str');
  has Uri => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ResourceUri

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::ResourceUri object:

  $service_obj->Method(Att1 => { ResourceType => $value, ..., Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::ResourceUri object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceType

=head1 DESCRIPTION

URIs for function resources.

=head1 ATTRIBUTES


=head2 ResourceType => Str

  The type of the resource.


=head2 Uri => Str

  The URI for accessing the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

