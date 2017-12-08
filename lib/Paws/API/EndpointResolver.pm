package Paws::API::EndpointResolver;
  use Moose::Role;
  use URI::Template;
  use URI;
  use Paws::Exception;
  use Moose::Util::TypeConstraints;

  has region => (is => 'rw', isa => 'Str|Undef');
  requires 'service';

  has _endpoint_info => (
    is => 'ro',
    init_arg => undef,
    lazy => 1,
    default => sub {
      my $self = shift;
      my $acting_region = $self->region;

      if (defined $self->_global_region) {
        $acting_region = $self->_global_region;
      }

      my $info = $self->region_endpoints->{ $acting_region };
      Paws::Exception->throw(
        request_id => '',
        code => 'NoRegionError',
        message => "Can't find an endpoint for " . $self->region
      ) if (not defined $info);
      return $info;
    },
  );

  has signature_region => (
    is => 'rw',
    isa => 'Str', 
    lazy => 1,
    default => sub {
      my $self = shift;
      if (defined $self->_endpoint_info->{ sig_region }) {
        return $self->_endpoint_info->{ sig_region };
      } else {
        return $self->region;
      }
    },
  );

  has signature_service => (
    is => 'ro',
    isa => 'Str',
    lazy => 1,
    default => sub {
      my $self = shift;
      return $self->_endpoint_info->{ sig_service };
    }
  );

  subtype 'Paws::EndpointURL',
       as 'URI';

  coerce 'Paws::EndpointURL',
    from 'Str',
     via { URI->new($_); };

  has endpoint => (
    is => 'ro',
    isa => 'Paws::EndpointURL',
    lazy => 1,
    coerce => 1,
    default => sub {
      'https://' . shift->_endpoint_info->{ hostname };
    }
  );

  has endpoint_host => (
    is => 'ro',
    isa => 'Str',
    lazy => 1,
    default => sub {
      shift->endpoint->host;
    }
  ); 

  has _api_endpoint => (
    is => 'ro',
    isa => 'Str',
    lazy => 1,
    default => sub {
      shift->endpoint->as_string;
    }
  ); 

  has default_scheme => ( is => 'ro', isa => 'Str', default => 'https' );

1;
