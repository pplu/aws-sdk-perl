package Paws::ImportExport::Artifact;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has URL => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::Artifact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImportExport::Artifact object:

  $service_obj->Method(Att1 => { Description => $value, ..., URL => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImportExport::Artifact object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

A discrete item that contains the description and URL of an artifact
(such as a PDF).

=head1 ATTRIBUTES


=head2 Description => Str

  


=head2 URL => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImportExport>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

