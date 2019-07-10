package Paws::Personalize::AlgorithmImage;
  use Moose;
  has DockerURI => (is => 'ro', isa => 'Str', request_name => 'dockerURI', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::AlgorithmImage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::AlgorithmImage object:

  $service_obj->Method(Att1 => { DockerURI => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::AlgorithmImage object:

  $result = $service_obj->Method(...);
  $result->Att1->DockerURI

=head1 DESCRIPTION

Describes an algorithm image.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DockerURI => Str

  The URI of the Docker container for the algorithm image.


=head2 Name => Str

  The name of the algorithm image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

