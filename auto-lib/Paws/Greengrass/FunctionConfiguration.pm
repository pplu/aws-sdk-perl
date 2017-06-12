package Paws::Greengrass::FunctionConfiguration;
  use Moose;
  has Environment => (is => 'ro', isa => 'Paws::Greengrass::FunctionConfigurationEnvironment');
  has ExecArgs => (is => 'ro', isa => 'Str');
  has Executable => (is => 'ro', isa => 'Str');
  has MemorySize => (is => 'ro', isa => 'Int');
  has Pinned => (is => 'ro', isa => 'Bool');
  has Timeout => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::FunctionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::FunctionConfiguration object:

  $service_obj->Method(Att1 => { Environment => $value, ..., Timeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::FunctionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Environment

=head1 DESCRIPTION

Configuration of the function

=head1 ATTRIBUTES


=head2 Environment => L<Paws::Greengrass::FunctionConfigurationEnvironment>

  Environment of the function configuration


=head2 ExecArgs => Str

  Execution Arguments


=head2 Executable => Str

  Executable


=head2 MemorySize => Int

  The memory size, in KB, you configured for the function.


=head2 Pinned => Bool

  Whether the function is pinned or not. Pinned means the function is
long-lived and starts when the core starts.


=head2 Timeout => Int

  The function execution time at which Lambda should terminate the
function. This timeout still applies to pinned lambdas for each
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

