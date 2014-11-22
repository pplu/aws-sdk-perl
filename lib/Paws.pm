package Paws::SDK::Config;

use Moose;

has caller => (is => 'ro', isa => 'Str', default => 'Paws::Net::Caller'); 
has override_endpoint_role  => (is => 'ro', isa => 'Str');
has override_signature_role => (is => 'ro', isa => 'Str');
has override_parameter_role => (is => 'ro', isa => 'Str');
has override_response_role  => (is => 'ro', isa => 'Str');

1;

package Paws;

use Moose;
use MooseX::ClassAttribute;
use Moose::Util qw//;
use Module::Runtime qw//;

use Paws::API::JSONAttribute;

use Paws::Net::Caller;
use Paws::API;

has _class_prefix => (isa => 'Str', is => 'ro', default => 'Paws::');
has _class_cache => (isa => 'HashRef', is => 'ro', default => sub { {} });

has config => (isa => 'Paws::SDK::Config', is => 'rw', default => sub { Paws->default_config });

class_has _default_object => (is => 'rw', isa => 'Paws');
class_has default_config => (is => 'rw', isa => 'Paws::SDK::Config', default => sub { Paws::SDK::Config->new });

sub load_class {
  my (undef, @classes) = @_;
  Module::Runtime::require_module($_) for (@classes);
}

sub service {
  my ($self, $service_name) = @_;

  # If ->service is invoked via Paws->service, without an instance
  if (not ref($self)) {
    if (not defined Paws->_default_object) {
      Paws->_default_object(Paws->new(config => Paws->default_config));
    }
    $self = Paws->_default_object;
  }

  my $class = $self->_class_prefix . $service_name;

  return $self->_class_cache->{ $class } if (defined $self->_class_cache->{ $class });
  
  $self->load_class($class);

  my $caller_role    = $self->config->caller;
  my $endpoint_role  = (defined $self->config->override_endpoint_role) ? $self->config->override_endpoint_role : $class->endpoint_role;
  my $signature_role = (defined $self->config->override_signature_role) ? $self->config->override_signature_role : $class->signature_role;
  my $parameter_role = (defined $self->config->override_parameter_role) ? $self->config->override_parameter_role : $class->parameter_role;
  my $response_role  = (defined $self->config->override_response_role) ? $self->config->override_response_role : $class->response_role;

  $self->load_class($caller_role, $endpoint_role, $signature_role, $parameter_role, $response_role);

  my $service = Moose::Util::with_traits($class, $caller_role, 
                                                 $endpoint_role, 
                                                 $signature_role,
                                                 $parameter_role,
                                                 $response_role);

  $self->_class_cache->{ $class } = $service;

  return $service;
}

1;
