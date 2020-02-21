package Paws::DeviceFarm::TestGridSessionArtifact;
  use Moose;
  has Filename => (is => 'ro', isa => 'Str', request_name => 'filename', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::TestGridSessionArtifact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::TestGridSessionArtifact object:

  $service_obj->Method(Att1 => { Filename => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::TestGridSessionArtifact object:

  $result = $service_obj->Method(...);
  $result->Att1->Filename

=head1 DESCRIPTION

Artifacts are video and other files that are produced in the process of
running a browser in an automated context.

Video elements might be broken up into multiple artifacts as they grow
in size during creation.

=head1 ATTRIBUTES


=head2 Filename => Str

  The file name of the artifact.


=head2 Type => Str

  The kind of artifact.


=head2 Url => Str

  A semi-stable URL to the content of the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

