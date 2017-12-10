package Paws::EMR::Command;
  use Moose;
  has Args => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has ScriptPath => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Command

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Command object:

  $service_obj->Method(Att1 => { Args => $value, ..., ScriptPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Command object:

  $result = $service_obj->Method(...);
  $result->Att1->Args

=head1 DESCRIPTION

An entity describing an executable that runs on a cluster.

=head1 ATTRIBUTES


=head2 Args => ArrayRef[Str|Undef]

  Arguments for Amazon EMR to pass to the command for execution.


=head2 Name => Str

  The name of the command.


=head2 ScriptPath => Str

  The Amazon S3 location of the command script.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

