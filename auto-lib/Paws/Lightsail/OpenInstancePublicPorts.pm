
package Paws::Lightsail::OpenInstancePublicPorts;
  use Moose;
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);
  has PortInfo => (is => 'ro', isa => 'Paws::Lightsail::PortInfo', traits => ['NameInRequest'], request_name => 'portInfo' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'OpenInstancePublicPorts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::OpenInstancePublicPortsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::OpenInstancePublicPorts - Arguments for method OpenInstancePublicPorts on Paws::Lightsail

=head1 DESCRIPTION

This class represents the parameters used for calling the method OpenInstancePublicPorts on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method OpenInstancePublicPorts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to OpenInstancePublicPorts.

As an example:

  $service_obj->OpenInstancePublicPorts(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceName => Str

The name of the instance for which you want to open the public ports.



=head2 B<REQUIRED> PortInfo => L<Paws::Lightsail::PortInfo>

An array of key-value pairs containing information about the port
mappings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method OpenInstancePublicPorts in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

