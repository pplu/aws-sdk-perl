package Paws::SageMaker::RenderingError;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', required => 1);
  has Message => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::RenderingError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::RenderingError object:

  $service_obj->Method(Att1 => { Code => $value, ..., Message => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::RenderingError object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

A description of an error that occurred while rendering the template.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Code => Str

  A unique identifier for a specific class of errors.


=head2 B<REQUIRED> Message => Str

  A human-readable message describing the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

