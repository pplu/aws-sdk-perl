package AWS::SDK::Config;

use Moose;

has caller => (is => 'ro', isa => 'Str', default => 'Net::AWS::Caller'); 
has override_endpoint_role  => (is => 'ro', isa => 'Str');
has override_signature_role => (is => 'ro', isa => 'Str');
has override_parameter_role => (is => 'ro', isa => 'Str');
has override_response_role  => (is => 'ro', isa => 'Str');

1;

package Aws;

use Moose;
use MooseX::ClassAttribute;
use Moose::Util qw//;
use Class::Load qw//;

use Net::AWS::Caller;
use AWS::API;

has _class_prefix => (isa => 'Str', is => 'ro', default => 'Aws::');
has _class_cache => (isa => 'HashRef', is => 'ro', default => sub { {} });

has config => (isa => 'AWS::SDK::Config', is => 'rw', default => sub { Aws->default_config });

class_has _default_object => (is => 'rw', isa => 'Aws');
class_has default_config => (is => 'rw', isa => 'AWS::SDK::Config', default => sub { AWS::SDK::Config->new });

sub service {
  my ($self, $service_name) = @_;

  # If ->service is invoked via Aws->service, without an instance
  if (not ref($self)) {
    if (not defined Aws->_default_object) {
      Aws->_default_object(Aws->new(config => Aws->default_config));
    }
    $self = Aws->_default_object;
  }

  my $class = $self->_class_prefix . $service_name;

  return $self->_class_cache->{ $class } if (defined $self->_class_cache->{ $class });
  
  Class::Load::load_class($class);

  my $endpoint_role  = (defined $self->config->override_endpoint_role) ? '' : $class->endpoint_role;
  my $signature_role = (defined $self->config->override_signature_role) ? '' : $class->signature_role;
  my $parameter_role = (defined $self->config->override_parameter_role) ? '' : $class->parameter_role;
  my $response_role  = (defined $self->config->override_response_role) ? '' : $class->response_role;

  my $service = Moose::Util::with_traits($class, $self->config->caller, 
                                                 $endpoint_role, 
                                                 $signature_role,
                                                 $parameter_role,
                                                 $response_role);

  $self->_class_cache->{ $class } = $service;

  return $service;
}

1;
