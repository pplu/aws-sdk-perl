package Paws::Signin;
  use Moose;
  use JSON::MaybeXS;
  use URI;
  use Paws::Net::APIResponse;
  sub service { 'signin' }
  sub version { '2010-05-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });


  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::NoSignature', 'Paws::Net::SigninCaller';
 
  has '+region_rules' => (default => sub {
    my $regioninfo;
    $regioninfo = [
    {
      uri => 'https://signin.aws.amazon.com'
    }
    ];
    return $regioninfo;
  });

  sub operations { qw/GetSigninToken Login/ }
 
  sub GetSigninToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signin::GetSigninToken', @_);
    return $self->caller->do_call($self, $call_object);
  }

  # This method doesn't do an HTTP call. It uses prepare_request_for_call to get a requestObj
  # that is manipulated to construct the URL in Step6 of 
  # http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-custom-url.html
  sub Login {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Signin::Login', @_);

    my $params = {
      Action => $call_object->_api_call,
      Destination => $call_object->Destination,
      Issuer => $call_object->Issuer,
      SigninToken => $call_object->SigninToken
    };

    my $url = URI->new($self->endpoint);
    $url->path('/federation');
    $url->query_form($params);

    my $response = Paws::Net::APIResponse->new(
      status => 200,
      content => encode_json({ URL => $url->as_string }),
      headers => {},
    );
    return $self->response_to_object->process($call_object, $response);
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Signin - Perl Interface to AWS Console Signin service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...');
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=cut
