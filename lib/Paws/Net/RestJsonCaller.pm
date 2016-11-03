package Paws::Net::RestJsonCaller;
  use Moose::Role;
  use HTTP::Request::Common;
  use POSIX qw(strftime); 
  use URI::Template;
  use JSON::MaybeXS;

  sub _is_internal_type {
    my ($self, $att_type) = @_;
    return ($att_type eq 'Str' or $att_type eq 'Str|Undef' or $att_type eq 'Int' or $att_type eq 'Bool' or $att_type eq 'Num');
  }

  # converts the objects that represent the call into parameters that the API can understand
  sub _to_jsoncaller_params {
    my ($self, $params) = @_;
    my %p;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      my $key = $params->meta->get_attribute($att)->does('Paws::API::Attribute::Trait::NameInRequest')?$params->meta->get_attribute($att)->request_name:$att;
      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;
        if ($att_type eq 'Bool') {
          $p{ $key } = ($params->$att)?\1:\0;
        } elsif ($att_type eq 'Int') {
          $p{ $key } = int($params->$att);
        } elsif ($att_type eq 'Str') {
          # concatenate an empty string so numbers get transmitted as strings
          $p{ $key } = "" . $params->$att;
        } elsif ($self->_is_internal_type($att_type)) {
          $p{ $key } = $params->$att;
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
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
    my $qparams = {};

    foreach my $attribute ($call->meta->get_all_attributes) {
      my $att_name = $attribute->name;
      if ($attribute->does('Paws::API::Attribute::Trait::ParamInURI')) {
        $vars->{ $attribute->uri_name } = $call->$att_name
      }
      if ($attribute->does('Paws::API::Attribute::Trait::ParamInQuery')) {
        $qparams->{ $attribute->query_name } = $call->$att_name if (defined $call->$att_name);
      }
    }

    my $uri = $t->process($vars);
    $uri->query_form(%$qparams);
    return $uri->as_string;
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request = Paws::Net::APIRequest->new();

    my $uri = $self->_call_uri($call);
    $request->uri($uri);

    my $url = $self->_api_endpoint . $uri;
    $request->url($url);
    
    my $data = $self->_to_jsoncaller_params($call);
    $request->content(encode_json($data));
    
    $request->method($call->_api_method);

    $self->sign($request);

    return $request;
  }
1;
