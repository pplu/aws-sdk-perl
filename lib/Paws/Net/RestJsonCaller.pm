package Paws::Net::RestJsonCaller;
  use Paws;
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 
  use URI::Template;
  use JSON::MaybeXS;

  use Paws::Net::RestJsonResponse;

  has response_to_object => (
    is => 'ro',
    default => sub {
      Paws::Net::RestJsonResponse->new;
    }
  );

  # converts the objects that represent the call into parameters that the API can understand
  sub _to_jsoncaller_params {
    my ($self, $params) = @_;
    my %p;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      my $attribute = $params->meta->get_attribute($att);

      next if ($attribute->does('ParamInHeader') or
               $attribute->does('ParamInQuery') or
               $attribute->does('ParamInURI') or
               $attribute->does('ParamInBody')
      );

      my $key = $attribute->does('Paws::API::Attribute::Trait::NameInRequest')?$attribute->request_name:$att;
      if (defined $params->$att) {
        my $att_type = $attribute->type_constraint;
        if ($att_type eq 'Bool') {
          $p{ $key } = ($params->$att)?\1:\0;
        } elsif ($att_type eq 'Int') {
          $p{ $key } = int($params->$att);
        } elsif ($att_type eq 'Str') {
          # concatenate an empty string so numbers get transmitted as strings
          $p{ $key } = "" . $params->$att;
        } elsif (Paws->is_internal_type($att_type)) {
          $p{ $key } = $params->$att;
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if (Paws->is_internal_type("$1")){
            $p{ $key } = $params->$att;
          } else {
            $p{ $key } = [ map { $self->_to_jsoncaller_params($_) } @{ $params->$att } ];
          }
        } elsif ($att_type->isa('Moose::Meta::TypeConstraint::Enum')) {
          $p{ $key } = $params->$att;
        } elsif ($params->$att->does('Paws::API::StrToNativeMapParser')){ 
          $p{ $key } = { %{ $params->$att->Map }  };
        } elsif ($params->$att->does('Paws::API::StrToObjMapParser')){
          my $type = $params->$att->meta->get_attribute('Map')->type_constraint;
          if (my ($inner) = ("$type" =~ m/^HashRef\[ArrayRef\[(.*?)\]/)) {
            $p{ $key } = { map { my $k = $_; ( $k => [ map { $self->_to_jsoncaller_params($_) } @{$params->$att->Map->{$_} } ] ) } keys %{ $params->$att->Map } };
          } else {
            $p{ $key } = { map { $_ => $self->_to_jsoncaller_params($params->$att->Map->{$_}) } keys %{ $params->$att->Map } };
          }
        } else {
          $p{ $key } = $self->_to_jsoncaller_params($params->$att);
        }
      }
    }
    return \%p;
  }

  sub _call_uri {
    my ($self, $call) = @_;
    my $uri_template = $call->meta->name->_api_uri;
    my $t = URI::Template->new( $uri_template );

    my $vars = {};

    foreach my $attribute ($call->meta->get_all_attributes) {
      my $att_name = $attribute->name;
      if ($attribute->does('Paws::API::Attribute::Trait::ParamInURI')) {
        $vars->{ $attribute->uri_name } = $call->$att_name
      }
    }

    my $uri = $t->process($vars);
    return $uri;
  }

  sub _to_header_params {
    my ($self, $request, $call) = @_;
    foreach my $attribute ($call->meta->get_all_attributes) {
      if ($attribute->does('Paws::API::Attribute::Trait::ParamInHeader') and $attribute->has_value($call)) {
        $request->headers->header( $attribute->header_name => $attribute->get_value($call) );
      }
    }
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request = Paws::Net::APIRequest->new();

    my $uri = $self->_call_uri($call);

    my $qparams = { $uri->query_form };
    foreach my $attribute ($call->meta->get_all_attributes) {
      my $att_name = $attribute->name;
      if ($attribute->does('Paws::API::Attribute::Trait::ParamInQuery')) {
        $qparams->{ $attribute->query_name } = $call->$att_name if (defined $call->$att_name);
      }
    }
    $uri->query_form(%$qparams);

    $request->uri($uri->as_string);
    my $url = $self->_api_endpoint . $uri->as_string;
    $request->url($url);

    $self->_to_header_params($request, $call);
    
    if ($call->can('_stream_param')) {
      my $param_name = $call->_stream_param;
      $request->content($call->$param_name);
      #$request->headers->header( 'content-length' => $request->content_length );
      #$request->headers->header( 'content-type'   => $self->content_type );
    } else {
      my $data = $self->_to_jsoncaller_params($call);
      $request->content(encode_json($data));
    }
    
    $request->method($call->_api_method);

    $self->sign($request);

    return $request;
  }
1;
