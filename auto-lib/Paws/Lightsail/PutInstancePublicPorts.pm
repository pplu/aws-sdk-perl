
package Paws::Lightsail::PutInstancePublicPorts;
  use Moose;
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);
  has PortInfos => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::PortInfo]', traits => ['NameInRequest'], request_name => 'portInfos' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutInstancePublicPorts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::PutInstancePublicPortsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::PutInstancePublicPorts - Arguments for method PutInstancePublicPorts on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInstancePublicPorts on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method PutInstancePublicPorts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInstancePublicPorts.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $PutInstancePublicPortsResult = $lightsail->PutInstancePublicPorts(
      InstanceName => 'MyResourceName',
      PortInfos    => [
        {
          CidrListAliases => [ 'Mystring', ... ],    # OPTIONAL
          Cidrs           => [ 'Mystring', ... ],    # OPTIONAL
          FromPort  => 1,                      # min: -1, max: 65535; OPTIONAL
          Ipv6Cidrs => [ 'Mystring', ... ],    # OPTIONAL
          Protocol => 'tcp',    # values: tcp, all, udp, icmp; OPTIONAL
          ToPort   => 1,        # min: -1, max: 65535; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Operation = $PutInstancePublicPortsResult->Operation;

    # Returns a L<Paws::Lightsail::PutInstancePublicPortsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/PutInstancePublicPorts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceName => Str

The name of the instance for which to open ports.



=head2 B<REQUIRED> PortInfos => ArrayRef[L<Paws::Lightsail::PortInfo>]

An array of objects to describe the ports to open for the specified
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInstancePublicPorts in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

