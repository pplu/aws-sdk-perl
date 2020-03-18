package Paws::IoTSecureTunneling::TimeoutConfig;
  use Moose;
  has MaxLifetimeTimeoutMinutes => (is => 'ro', isa => 'Int', request_name => 'maxLifetimeTimeoutMinutes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::TimeoutConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSecureTunneling::TimeoutConfig object:

  $service_obj->Method(Att1 => { MaxLifetimeTimeoutMinutes => $value, ..., MaxLifetimeTimeoutMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSecureTunneling::TimeoutConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxLifetimeTimeoutMinutes

=head1 DESCRIPTION

Tunnel timeout configuration.

=head1 ATTRIBUTES


=head2 MaxLifetimeTimeoutMinutes => Int

  The maximum amount of time (in minutes) a tunnel can remain open. If
not specified, maxLifetimeTimeoutMinutes defaults to 720 minutes. Valid
values are from 1 minute to 12 hours (720 minutes)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSecureTunneling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

