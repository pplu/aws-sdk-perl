package Paws::Batch::Volume;
  use Moose;
  has Host => (is => 'ro', isa => 'Paws::Batch::Host', request_name => 'host', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::Volume

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::Volume object:

  $service_obj->Method(Att1 => { Host => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::Volume object:

  $result = $service_obj->Method(...);
  $result->Att1->Host

=head1 DESCRIPTION

A data volume used in a job's container properties.

=head1 ATTRIBUTES


=head2 Host => L<Paws::Batch::Host>

  The contents of the C<host> parameter determine whether your data
volume persists on the host container instance and where it is stored.
If the host parameter is empty, then the Docker daemon assigns a host
path for your data volume. However, the data is not guaranteed to
persist after the containers associated with it stop running.


=head2 Name => Str

  The name of the volume. Up to 255 letters (uppercase and lowercase),
numbers, hyphens, and underscores are allowed. This name is referenced
in the C<sourceVolume> parameter of container definition
C<mountPoints>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

