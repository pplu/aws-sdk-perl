package Paws::CodeBuild::EnvironmentLanguage;
  use Moose;
  has Images => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::EnvironmentImage]', request_name => 'images', traits => ['NameInRequest']);
  has Language => (is => 'ro', isa => 'Str', request_name => 'language', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::EnvironmentLanguage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::EnvironmentLanguage object:

  $service_obj->Method(Att1 => { Images => $value, ..., Language => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::EnvironmentLanguage object:

  $result = $service_obj->Method(...);
  $result->Att1->Images

=head1 DESCRIPTION

A set of Docker images that are related by programming language and are
managed by AWS CodeBuild.

=head1 ATTRIBUTES


=head2 Images => ArrayRef[L<Paws::CodeBuild::EnvironmentImage>]

  The list of Docker images that are related by the specified programming
language.


=head2 Language => Str

  The programming language for the Docker images.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

