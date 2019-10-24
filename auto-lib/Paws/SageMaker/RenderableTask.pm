# Generated from default/object.tt
package Paws::SageMaker::RenderableTask;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has Input => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Input' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'Input' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::RenderableTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::RenderableTask object:

  $service_obj->Method(Att1 => { Input => $value, ..., Input => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::RenderableTask object:

  $result = $service_obj->Method(...);
  $result->Att1->Input

=head1 DESCRIPTION

Contains input values for a task.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Input => Str

  A JSON object that contains values for the variables defined in the
template. It is made available to the template under the substitution
variable C<task.input>. For example, if you define a variable
C<task.input.text> in your template, you can supply the variable in the
JSON object as C<"text": "sample text">.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

