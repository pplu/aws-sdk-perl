
use AWS::API;


package Aws::DirectConnect {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'directconnect');
  has version => (is => 'ro', isa => 'Str', default => '2012-10-25');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'OvertureService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub AllocateConnectionOnInterconnect {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::AllocateConnectionOnInterconnect', @_);
  }
  sub AllocatePrivateVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::AllocatePrivateVirtualInterface', @_);
  }
  sub AllocatePublicVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::AllocatePublicVirtualInterface', @_);
  }
  sub ConfirmConnection {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::ConfirmConnection', @_);
  }
  sub ConfirmPrivateVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::ConfirmPrivateVirtualInterface', @_);
  }
  sub ConfirmPublicVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::ConfirmPublicVirtualInterface', @_);
  }
  sub CreateConnection {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::CreateConnection', @_);
  }
  sub CreateInterconnect {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::CreateInterconnect', @_);
  }
  sub CreatePrivateVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::CreatePrivateVirtualInterface', @_);
  }
  sub CreatePublicVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::CreatePublicVirtualInterface', @_);
  }
  sub DeleteConnection {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DeleteConnection', @_);
  }
  sub DeleteInterconnect {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DeleteInterconnect', @_);
  }
  sub DeleteVirtualInterface {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DeleteVirtualInterface', @_);
  }
  sub DescribeConnections {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeConnections', @_);
  }
  sub DescribeConnectionsOnInterconnect {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeConnectionsOnInterconnect', @_);
  }
  sub DescribeInterconnects {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeInterconnects', @_);
  }
  sub DescribeLocations {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeLocations', @_);
  }
  sub DescribeVirtualGateways {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeVirtualGateways', @_);
  }
  sub DescribeVirtualInterfaces {
    my $self = shift;
    return $self->do_call('Aws::DirectConnect::DescribeVirtualInterfaces', @_);
  }
}
1;
