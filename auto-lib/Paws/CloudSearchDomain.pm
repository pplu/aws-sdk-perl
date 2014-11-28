
use Paws::API;


package Paws::CloudSearchDomain {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudsearchdomain');
  has version => (is => 'ro', isa => 'Str', default => '2013-01-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestJsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::RestJsonResponse');

  
  sub Search {
    my $self = shift;
    return $self->do_call('Paws::CloudSearchDomain::Search', @_);
  }
  sub Suggest {
    my $self = shift;
    return $self->do_call('Paws::CloudSearchDomain::Suggest', @_);
  }
  sub UploadDocuments {
    my $self = shift;
    return $self->do_call('Paws::CloudSearchDomain::UploadDocuments', @_);
  }
}
1;