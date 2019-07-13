package Paws::CodeBuild::PhaseContext;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has StatusCode => (is => 'ro', isa => 'Str', request_name => 'statusCode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::PhaseContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::PhaseContext object:

  $service_obj->Method(Att1 => { Message => $value, ..., StatusCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::PhaseContext object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

Additional information about a build phase that has an error. You can
use this information for troubleshooting.

=head1 ATTRIBUTES


=head2 Message => Str

  An explanation of the build phase's context. This might include a
command ID and an exit code.


=head2 StatusCode => Str

  The status code for the context of the build phase.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

