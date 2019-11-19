# Generated from default/object.tt
package Paws::StepFunctions::ExecutionStartedEventDetails;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StepFunctions::Types qw//;
  has Input => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'Input' => 'input'
                     },
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Input' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ExecutionStartedEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StepFunctions::ExecutionStartedEventDetails object:

  $service_obj->Method(Att1 => { Input => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StepFunctions::ExecutionStartedEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Input

=head1 DESCRIPTION

Contains details about the start of the execution.

=head1 ATTRIBUTES


=head2 Input => Str

  The JSON data input to the execution.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the IAM role used for executing AWS
Lambda tasks.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

