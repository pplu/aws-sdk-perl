package Paws::API::SingleEndpointCaller {
  use Moose::Role;
  requires 'service';

  use Paws::Net::Regions;

  has region => (
    is => 'rw', 
    isa => 'Str', 
    lazy => 1,
    init_arg => undef, 
    default => sub {
      my $self = shift;
use Data::Dumper;
print Dumper($self->_endpoint_info);
      $self->_endpoint_info->{ credentialScope }->{ region }; 
    }
  );
  requires 'service';

  has _endpoint_info => (
    is => 'ro',
    init_arg => undef,
    lazy => 1,
    default => sub {
      my $self = shift;
      my $rules = "botocore/botocore/data/_endpoints.json";
      my $resolver = Paws::Net::Regions->new( rules => $rules );
      my $endpoint = $resolver->construct_endpoint($self->service, undef);
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
