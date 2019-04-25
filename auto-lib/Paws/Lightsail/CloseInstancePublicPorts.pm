
package Paws::Lightsail::CloseInstancePublicPorts;
  use Moose;
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);
  has PortInfo => (is => 'ro', isa => 'Paws::Lightsail::PortInfo', traits => ['NameInRequest'], request_name => 'portInfo' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CloseInstancePublicPorts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CloseInstancePublicPortsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CloseInstancePublicPorts - Arguments for method CloseInstancePublicPorts on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CloseInstancePublicPorts on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CloseInstancePublicPorts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CloseInstancePublicPorts.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CloseInstancePublicPortsResult = $lightsail->CloseInstancePublicPorts(
      InstanceName => 'MyResourceName',
      PortInfo     => {
        FromPort => 1,        # max: 65535; OPTIONAL
        Protocol => 'tcp',    # values: tcp, all, udp; OPTIONAL
        ToPort   => 1,        # max: 65535; OPTIONAL
      },

    );

    # Results:
    my $Operation = $CloseInstancePublicPortsResult->Operation;

    # Returns a L<Paws::Lightsail::CloseInstancePublicPortsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CloseInstancePublicPorts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceName => Str

The name of the instance on which you're attempting to close the public
ports.



=head2 B<REQUIRED> PortInfo => L<Paws::Lightsail::PortInfo>

Information about the public port you are trying to close.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CloseInstancePublicPorts in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

