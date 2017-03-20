package Paws::DeviceFarm::ExecutionConfiguration;
  use Moose;
  has JobTimeoutMinutes => (is => 'ro', isa => 'Int', xmlname => 'jobTimeoutMinutes', request_name => 'jobTimeoutMinutes', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ExecutionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::ExecutionConfiguration object:

  $service_obj->Method(Att1 => { JobTimeoutMinutes => $value, ..., JobTimeoutMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::ExecutionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->JobTimeoutMinutes

=head1 DESCRIPTION

Represents configuration information about a test run, such as the
execution timeout (in minutes).

=head1 ATTRIBUTES


=head2 JobTimeoutMinutes => Int

  The number of minutes a test run will execute before it times out.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

