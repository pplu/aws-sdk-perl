package Paws::API::RegionalEndpointCaller {
  use Moose::Role;
  use Paws::Net::Regions;

  has region => (is => 'rw', isa => 'Str', required => 1);
  requires 'service';

  has _endpoint_info => (
    is => 'ro',
    init_arg => undef,
    lazy => 1,
    default => sub {
      my $self = shift;
      my $rules = "botocore/botocore/data/_endpoints.json";
      my $resolver = Paws::Net::Regions->new( rules => $rules );
      my $endpoint = $resolver->construct_endpoint($self->service, $self->region);
      return $endpoint;
    }
  );

  has endpoint_host => (
    is => 'ro',
    isa => 'Str',
    lazy => 1,
    default => sub {
      shift->_endpoint_info->{ url }->host;
    }
  ); 

  has _api_endpoint => (
    is => 'ro',
    isa => 'Str',
    lazy => 1,
    default => sub {
      shift->_endpoint_info->{ url }->as_string;
    }
  ); 
}

1;
