package Paws::EMR::HadoopStepConfig;
  use Moose;
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str');
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Paws::EMR::StringMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::HadoopStepConfig

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::HadoopStepConfig object:

  $service_obj->Method(Att1 => { Args => $value, ..., Properties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::HadoopStepConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Args

=head1 ATTRIBUTES

=head2 Args => ArrayRef[Str]

  

The list of command line arguments to pass to the JAR file's main
function for execution.










=head2 Jar => Str

  

The path to the JAR file that runs during the step.










=head2 MainClass => Str

  

The name of the main class in the specified Java file. If not
specified, the JAR file should specify a main class in its manifest
file.










=head2 Properties => Paws::EMR::StringMap

  

The list of Java properties that are set when the step runs. You can
use these properties to pass key value pairs to your main function.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

