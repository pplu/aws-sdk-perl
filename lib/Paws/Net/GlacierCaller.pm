package Paws::Net::GlacierCaller;
  use Moose::Role;
  use JSON::MaybeXS;

  around prepare_request_for_call => sub {
    my ($orig, $self, $call) = @_;

    #TODO: assign '-' to AccountId if there is no AccountId. This may need to be done in
    # another place 

    my $request = Paws::Net::APIRequest->new();

    my $uri = $self->_call_uri($call);
    $request->uri($uri);

    my $url = $self->_api_endpoint . $uri;
    $request->url($url);
    
    my $data = $self->_to_jsoncaller_params($call);
    $request->content(encode_json($data));

    $request->header('x-amz-glacier-version', $self->version);
    
    $request->method($call->_api_method);

    $self->sign($request);

    return $request;
  };
1;
