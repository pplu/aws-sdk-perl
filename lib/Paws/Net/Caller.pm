package Paws::Net::Caller::Attribute::Trait::NameInRequest {
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('NameInRequest');
  has request_name => (is => 'ro', isa => 'Str');
}

package Paws::Net::Caller {
  use Moose;
  use Paws::Net::Credentials;
  use Paws::Net::CredentialsProviderChain;
  use Carp qw(croak);
  use Module::Runtime qw//;
  use Paws::Net::APIRequest;

  has caller_for => (
    is => 'ro',
    required => 1,
  );

  has debug              => ( is => 'rw', required => 0, default => sub { 0 } );
  has ua => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        use HTTP::Tiny;
        HTTP::Tiny->new(
            'agent' => 'AWS Perl SDK 0.1',
        );
    }
  );

  #-- Custom request method from user overrides default method below
  has request_method     => ( is => 'rw', required => 0, lazy => 1, default => sub {
    my ( $self ) = @_;
    return sub {
      my ( $requestObj ) = @_;
      my $headers = {};
      $requestObj->headers->scan(sub { $headers->{ $_[0] } = $_[1] });
      # HTTP::Tiny has made setting Host header illegal. It derives Host from URL
      delete $headers->{Host};

      my $response = $self->ua->request(
        $requestObj->method,
        $requestObj->url,
        {
          headers => $headers,
          (defined $requestObj->content)?(content => $requestObj->content):(),
        }
      );
      if ( $response->{success} ) {
          return $self->caller_for->_process_response( $response->{content} );
      } else {
          #TODO: retry or croak based on error codes
          croak "POST Request failed: $response->{status} $response->{reason} $response->{content}\n";
      }
    };
  } );

  sub do_call {
    my ($self, $call_class, @params) = @_;
    my $call = $self->caller_for->new_with_coercions($call_class, @params);

    my $request = Paws::Net::APIRequest->new();
    $self->caller_for->_api_caller($call_class, $call, $request);
    $self->caller_for->sign($request);
    my $result = $self->send($request);

use Data::Dumper;
print Dumper($result, $call_class->_returns, $call_class->_result_key);
    if ($call_class->_returns){
      if ($call_class->_result_key){
        $result = $result->{ $call_class->_result_key };
      }
print Dumper($result);
      Module::Runtime::require_module($call_class->_returns);
      my $o_result = $call_class->_returns->from_result($result);
      return $o_result;
    } else {
      return 1;
    }
  }

  sub send {
    my ($self, $request) = @_;
    return $self->request_method->( $request, $self );
  }
}

1;
