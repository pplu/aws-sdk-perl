package Paws::Amplify::Artifact;
  use Moose;
  has ArtifactFileName => (is => 'ro', isa => 'Str', request_name => 'artifactFileName', traits => ['NameInRequest'], required => 1);
  has ArtifactId => (is => 'ro', isa => 'Str', request_name => 'artifactId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::Artifact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::Artifact object:

  $service_obj->Method(Att1 => { ArtifactFileName => $value, ..., ArtifactId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::Artifact object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactFileName

=head1 DESCRIPTION

Structure for artifact.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArtifactFileName => Str

  File name for the artifact.


=head2 B<REQUIRED> ArtifactId => Str

  Unique Id for a artifact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

