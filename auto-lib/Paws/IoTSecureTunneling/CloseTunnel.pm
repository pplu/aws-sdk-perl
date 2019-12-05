
package Paws::IoTSecureTunneling::CloseTunnel;
  use Moose;
  has Delete => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'delete' );
  has TunnelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tunnelId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CloseTunnel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSecureTunneling::CloseTunnelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::CloseTunnel - Arguments for method CloseTunnel on L<Paws::IoTSecureTunneling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CloseTunnel on the
L<AWS IoT Secure Tunneling|Paws::IoTSecureTunneling> service. Use the attributes of this class
as arguments to method CloseTunnel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CloseTunnel.

=head1 SYNOPSIS

    my $api.tunneling.iot = Paws->service('IoTSecureTunneling');
    my $CloseTunnelResponse = $api . tunneling . iot->CloseTunnel(
      TunnelId => 'MyTunnelId',
      Delete   => 1,              # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.tunneling.iot/CloseTunnel>

=head1 ATTRIBUTES


=head2 Delete => Bool

When set to true, AWS IoT Secure Tunneling deletes the tunnel data
immediately.



=head2 B<REQUIRED> TunnelId => Str

The ID of the tunnel to close.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CloseTunnel in L<Paws::IoTSecureTunneling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

