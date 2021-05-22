package Paws::EC2InstanceConnect;
  use Moose;
  sub service { 'ec2-instance-connect' }
  sub signing_name { 'ec2-instance-connect' }
  sub version { '2018-04-02' }
  sub target_prefix { 'AWSEC2InstanceConnectService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub SendSerialConsoleSSHPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2InstanceConnect::SendSerialConsoleSSHPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendSSHPublicKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2InstanceConnect::SendSSHPublicKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/SendSerialConsoleSSHPublicKey SendSSHPublicKey / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2InstanceConnect - Perl Interface to AWS AWS EC2 Instance Connect

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EC2InstanceConnect');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon EC2 Instance Connect enables system administrators to publish
one-time use SSH public keys to EC2, providing users a simple and
secure way to connect to their instances.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02>


=head1 METHODS

=head2 SendSerialConsoleSSHPublicKey

=over

=item InstanceId => Str

=item SSHPublicKey => Str

=item [SerialPort => Int]


=back

Each argument is described in detail in: L<Paws::EC2InstanceConnect::SendSerialConsoleSSHPublicKey>

Returns: a L<Paws::EC2InstanceConnect::SendSerialConsoleSSHPublicKeyResponse> instance

Pushes an SSH public key to the specified EC2 instance. The key remains
for 60 seconds, which gives you 60 seconds to establish a serial
console connection to the instance using SSH. For more information, see
EC2 Serial Console
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-serial-console.html)
in the I<Amazon EC2 User Guide>.


=head2 SendSSHPublicKey

=over

=item AvailabilityZone => Str

=item InstanceId => Str

=item InstanceOSUser => Str

=item SSHPublicKey => Str


=back

Each argument is described in detail in: L<Paws::EC2InstanceConnect::SendSSHPublicKey>

Returns: a L<Paws::EC2InstanceConnect::SendSSHPublicKeyResponse> instance

Pushes an SSH public key to the specified EC2 instance for use by the
specified user. The key remains for 60 seconds. For more information,
see Connect to your Linux instance using EC2 Instance Connect
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Connect-using-EC2-Instance-Connect.html)
in the I<Amazon EC2 User Guide>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

