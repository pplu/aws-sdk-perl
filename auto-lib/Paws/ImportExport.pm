
use Paws::API;


package Paws::ImportExport {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'importexport');
  has version => (is => 'ro', isa => 'Str', default => '2010-06-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V2Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub CancelJob {
    my $self = shift;
    return $self->do_call('Paws::ImportExport::CancelJob', @_);
  }
  sub CreateJob {
    my $self = shift;
    return $self->do_call('Paws::ImportExport::CreateJob', @_);
  }
  sub GetStatus {
    my $self = shift;
    return $self->do_call('Paws::ImportExport::GetStatus', @_);
  }
  sub ListJobs {
    my $self = shift;
    return $self->do_call('Paws::ImportExport::ListJobs', @_);
  }
  sub UpdateJob {
    my $self = shift;
    return $self->do_call('Paws::ImportExport::UpdateJob', @_);
  }
}
1;