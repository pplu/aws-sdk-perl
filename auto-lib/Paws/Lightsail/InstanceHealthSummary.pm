package Paws::Lightsail::InstanceHealthSummary;
  use Moose;
  has InstanceHealth => (is => 'ro', isa => 'Str', request_name => 'instanceHealth', traits => ['NameInRequest']);
  has InstanceHealthReason => (is => 'ro', isa => 'Str', request_name => 'instanceHealthReason', traits => ['NameInRequest']);
  has InstanceName => (is => 'ro', isa => 'Str', request_name => 'instanceName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstanceHealthSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstanceHealthSummary object:

  $service_obj->Method(Att1 => { InstanceHealth => $value, ..., InstanceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstanceHealthSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceHealth

=head1 DESCRIPTION

Describes information about the health of the instance.

=head1 ATTRIBUTES


=head2 InstanceHealth => Str

  Describes the overall instance health. Valid values are below.


=head2 InstanceHealthReason => Str

  More information about the instance health. Valid values are below.


=head2 InstanceName => Str

  The name of the Lightsail instance for which you are requesting health
check data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

