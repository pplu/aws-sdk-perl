package Paws::SSM::MaintenanceWindowTaskParameterValueExpression;
  use Moose;
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowTaskParameterValueExpression

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowTaskParameterValueExpression object:

  $service_obj->Method(Att1 => { Values => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowTaskParameterValueExpression object:

  $result = $service_obj->Method(...);
  $result->Att1->Values

=head1 DESCRIPTION

Defines the values for a task parameter.

=head1 ATTRIBUTES


=head2 Values => ArrayRef[Str|Undef]

  This field contains an array of 0 or more strings, each 1 to 255
characters in length.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

