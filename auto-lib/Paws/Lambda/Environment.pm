package Paws::Lambda::Environment;
  use Moose;
  has Variables => (is => 'ro', isa => 'Paws::Lambda::EnvironmentVariables');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::Environment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::Environment object:

  $service_obj->Method(Att1 => { Variables => $value, ..., Variables => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::Environment object:

  $result = $service_obj->Method(...);
  $result->Att1->Variables

=head1 DESCRIPTION

A function's environment variable settings.

=head1 ATTRIBUTES


=head2 Variables => L<Paws::Lambda::EnvironmentVariables>

  Environment variable key-value pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

