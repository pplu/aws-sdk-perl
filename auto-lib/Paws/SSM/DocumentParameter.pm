package Paws::SSM::DocumentParameter;
  use Moose;
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DocumentParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::DocumentParameter object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::DocumentParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

Parameters specified in a System Manager document that execute on the
server when the command is run.

=head1 ATTRIBUTES


=head2 DefaultValue => Str

  If specified, the default values for the parameters. Parameters without
a default value are required. Parameters with a default value are
optional.


=head2 Description => Str

  A description of what the parameter does, how to use it, the default
value, and whether or not the parameter is optional.


=head2 Name => Str

  The name of the parameter.


=head2 Type => Str

  The type of parameter. The type can be either String or StringList.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

