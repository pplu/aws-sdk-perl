package Paws::Net::RestJsonResponse;
  use Moose::Role;
  use JSON::MaybeXS;
  use Carp qw(croak);
  use Paws::Exception;
  
  sub unserialize_response {
    my ($self, $data) = @_;
    my $json = decode_json( $data );
    return $json;
  }

  sub error_to_exception {
    my ($self, $struct, $call_object, $http_status, $content, $headers) = @_;

    my ($message, $request_id, $code);

    if (exists $struct->{message}){
      $message = $struct->{message};
    } elsif (exists $struct->{Message}){
      $message = $struct->{Message};
    } else {
      die "Unrecognized error message format";
    }

    if (exists $headers->{'x-amzn-errortype'}){
      $code = (split /:/, $headers->{'x-amzn-errortype'})[0];
    } else {
      $code = (exists $struct->{Code}) ? $struct->{Code} : $struct->{ code };
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
    Paws->load_class("$inner_class");

    if (not defined $value){
      return $att_class->new(Map => {});
    } else {
      return $att_class->new(Map => { 
        map { ($_ => $self->new_from_struct($inner_class, $value->{ $_ }) ) } keys %$value 
      });
    }
  }
1;
