package Paws::Net::JsonCaller;
  use Paws;
  use Moose::Role;
  use JSON::MaybeXS;
  use POSIX qw(strftime);
  requires 'json_version';

  use Paws::Net::JsonResponse;

  has response_to_object => (
    is => 'ro',
    default => sub {
      Paws::Net::JsonResponse->new;
    }
  );

  # converts the objects that represent the call into parameters that the API can understand
  sub _to_jsoncaller_params {
    my ($self, $params) = @_;

    if ($params->does('Paws::API::StrToNativeMapParser')){
      return { %{ $params->Map }  };
    } elsif ($params->does('Paws::API::StrToObjMapParser')){
      my $type = $params->meta->get_attribute('Map')->type_constraint;
      if (my ($inner) = ("$type" =~ m/^HashRef\[ArrayRef\[(.*?)\]/)) {
        return { map { my $k = $_; ( $k => [ map { $self->_to_jsoncaller_params($_) } @{$params->Map->{$_} } ] ) } keys %{ $params->Map } };
      } else {
        return { map { $_ => $self->_to_jsoncaller_params($params->Map->{$_}) } keys %{ $params->Map } };
      }
    } else {
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
            $p{ $key } = $self->_to_jsoncaller_params($params->$att);
          } elsif ($params->$att->does('Paws::API::StrToObjMapParser')){
            $p{ $key } = $self->_to_jsoncaller_params($params->$att);
          } else {
            $p{ $key } = $self->_to_jsoncaller_params($params->$att);
          }
        }
      }
      return \%p;
    }
  }

  sub prepare_request_for_call {
    my ($self, $call) = @_;

    my $request = Paws::Net::APIRequest->new();

    $request->url($self->_api_endpoint . '/');
    $request->uri('/');
    $request->method('POST');

    my @time = gmtime;
    $request->parameters({ Action => $call->_api_call,
                           Version => $self->version,
                           AWSAccessKeyId => $self->access_key,
                           Timestamp => strftime("%Y-%m-%dT%H:%M:%SZ",@time),
                        });
    $request->header('X-Amz-Target', sprintf('%s.%s', $self->target_prefix, $call->_api_call));

    my $j_version = $self->json_version;
    $request->headers->content_type("application/x-amz-json-$j_version");

    #$request->header('Content-Encoding', 'amz-1.0');
    $request->header( 'X-Amz-Date' => strftime( '%Y%m%dT%H%M%SZ', @time ) );
    $request->header( Host => $self->endpoint_host );

    my $data = $self->_to_jsoncaller_params($call);
    $request->content(encode_json($data));

    $self->sign($request);

    return $request;
  }
1;
