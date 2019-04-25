package Paws::Greengrass::FunctionConfiguration;
  use Moose;
  has EncodingType => (is => 'ro', isa => 'Str');
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

  $service_obj->Method(Att1 => { EncodingType => $value, ..., Timeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::FunctionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EncodingType

=head1 DESCRIPTION

The configuration of the Lambda function.

=head1 ATTRIBUTES


=head2 EncodingType => Str

  The expected encoding type of the input payload for the function. The
default is ''json''.


=head2 Environment => L<Paws::Greengrass::FunctionConfigurationEnvironment>

  The environment configuration of the function.


=head2 ExecArgs => Str

  The execution arguments.


=head2 Executable => Str

  The name of the function executable.


=head2 MemorySize => Int

  The memory size, in KB, which the function requires. This setting is
not applicable and should be cleared when you run the Lambda function
without containerization.


=head2 Pinned => Bool

  True if the function is pinned. Pinned means the function is long-lived
and starts when the core starts.


=head2 Timeout => Int

  The allowed function execution time, after which Lambda should
terminate the function. This timeout still applies to pinned Lambda
functions for each request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

