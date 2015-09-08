package Paws::Net::JsonResponse {
  use Moose::Role;
  use JSON::MaybeXS;
  use Carp qw(croak);
  use Paws::Exception;
  
  sub unserialize_response {
    my ($self, $data) = @_;

    return {} if ($data eq '');

    my $json = decode_json( $data );
    return $json;
  }

  sub error_to_exception {
    my ($self, $struct, $call_object, $http_status, $content, $headers) = @_;

    my ($message, $request_id);

    if (exists $struct->{message}){
      $message = $struct->{message};
    } elsif (exists $struct->{Message}){
      $message = $struct->{Message};
    } else {
      die "Unrecognized error message format";
    }

    my $code = $struct->{__type};
    if ($code =~ m/#/) {
      $code = (split /#/, $code)[1];
    }
    $request_id = $headers->{ 'x-amzn-requestid' };

    Paws::Exception->new(
      message => $message,
      code => $code,
      request_id => $request_id
    );
  }

  sub handle_response_strtonativemap {
    my ($self, $att_class, $value) = @_;

    if (not defined $value){
      return $att_class->new(Map => {});
    } else {
      return $att_class->new(Map => $value);
    }
  }

  sub handle_response_strtoobjmap {
    my ($self, $att_class, $value) = @_;

    my $inner_class = $att_class->meta->get_attribute('Map')->type_constraint->name;
    ($inner_class) = ($inner_class =~ m/\[(.*)\]$/);
    Module::Runtime::require_module("$inner_class");

    if (not defined $value){
      return $att_class->new(Map => {});
    } else {
      return $att_class->new(Map => { 
        map { ($_ => $self->new_from_struct($inner_class, $value->{ $_ }) ) } keys %$value 
      });
    }
  }
}

1;
