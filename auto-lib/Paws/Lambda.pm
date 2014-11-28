
use Paws::API;


package Paws::Lambda {
  warn "Paws::Lambda is not stable / supported / entirely developed";
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'lambda');
  has version => (is => 'ro', isa => 'Str', default => '2014-11-11');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestJsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestJsonResponse');

  
  sub AddEventSource {
    my $self = shift;
    return $self->do_call('Paws::Lambda::AddEventSource', @_);
  }
  sub DeleteFunction {
    my $self = shift;
    return $self->do_call('Paws::Lambda::DeleteFunction', @_);
  }
  sub GetEventSource {
    my $self = shift;
    return $self->do_call('Paws::Lambda::GetEventSource', @_);
  }
  sub GetFunction {
    my $self = shift;
    return $self->do_call('Paws::Lambda::GetFunction', @_);
  }
  sub GetFunctionConfiguration {
    my $self = shift;
    return $self->do_call('Paws::Lambda::GetFunctionConfiguration', @_);
  }
  sub InvokeAsync {
    my $self = shift;
    return $self->do_call('Paws::Lambda::InvokeAsync', @_);
  }
  sub ListEventSources {
    my $self = shift;
    return $self->do_call('Paws::Lambda::ListEventSources', @_);
  }
  sub ListFunctions {
    my $self = shift;
    return $self->do_call('Paws::Lambda::ListFunctions', @_);
  }
  sub RemoveEventSource {
    my $self = shift;
    return $self->do_call('Paws::Lambda::RemoveEventSource', @_);
  }
  sub UpdateFunctionConfiguration {
    my $self = shift;
    return $self->do_call('Paws::Lambda::UpdateFunctionConfiguration', @_);
  }
  sub UploadFunction {
    my $self = shift;
    return $self->do_call('Paws::Lambda::UploadFunction', @_);
  }
}
1;