package Paws::CodeBuild::EnvironmentPlatform;
  use Moose;
  has Languages => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::EnvironmentLanguage]', request_name => 'languages', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::EnvironmentPlatform

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::EnvironmentPlatform object:

  $service_obj->Method(Att1 => { Languages => $value, ..., Platform => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::EnvironmentPlatform object:

  $result = $service_obj->Method(...);
  $result->Att1->Languages

=head1 DESCRIPTION

A set of Docker images that are related by platform and are managed by
AWS CodeBuild.

=head1 ATTRIBUTES


=head2 Languages => ArrayRef[L<Paws::CodeBuild::EnvironmentLanguage>]

  The list of programming languages that are available for the specified
platform.


=head2 Platform => Str

  The platform's name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

