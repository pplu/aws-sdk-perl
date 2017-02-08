package Paws::Net::JsonResponse;
  use Moose::Role;
  use JSON::MaybeXS;
  use Carp qw(croak);
  use Paws::Exception;
 
  sub handle_response {
    my ($self, $call_object, $http_status, $content, $headers) = @_;

    if (defined $headers->{ 'x-amz-crc32' }) {
      require String::CRC32;
      my $crc = String::CRC32::crc32($content);
      return Paws::Exception->new(
        code => 'Crc32Error',
        message => 'Content CRC32 mismatch',
        request_id => $headers->{ 'x-amzn-requestid' }
      ) if ($crc != $headers->{ 'x-amz-crc32' });
    }

    my $unserialized_struct;

    my $ret_class = $call_object->meta->name->_returns;
    if (defined $ret_class){
      Paws->load_class($ret_class);
      if ($ret_class->can('_stream_param')) {
        $unserialized_struct->{ $ret_class->_stream_param } = $content;
      } else {
        $unserialized_struct = $self->unserialize_response( $content );
      }
    }

    if ( $http_status >= 300 ) {
        return $self->error_to_exception($unserialized_struct, $call_object, $http_status, $content, $headers);
    } else {
        return $self->response_to_object($unserialized_struct, $call_object, $http_status, $content, $headers);
    }
  }
 
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
      # Rationale for this condition is in Issue #82 
      if ($struct->{__type} eq 'InternalError'){
        $message = '';
      } else {
        die "Unrecognized error message format";
      }
    }

    my $code = $struct->{__type};
    if ($code =~ m/#/) {
      $code = (split /#/, $code)[1];
    }
    $request_id = $headers->{ 'x-amzn-requestid' };

    Paws::Exception->new(
      message => $message,
      code => $code,
      request_id => $request_id,
      http_status => $http_status,
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

    my $is_array = 0;
    my $inner_class;
    my $class = $att_class->meta->get_attribute('Map')->type_constraint->name;

    if (my ($array_type) = ($class =~ m/^HashRef\[ArrayRef\[(.*)\]\]$/)){
      $inner_class = $array_type;
      $is_array = 1;
    } elsif (my ($inner_type) = ($class =~ m/^HashRef\[(.*)\]$/)) {
      $inner_class = $inner_type;
      $is_array = 0;
    }

    Paws->load_class("$inner_class");

    if ($is_array) {
      if (not defined $value){
        return $att_class->new(Map => {});
      } else {
        return $att_class->new(Map => { 
          map { my $k = $_; ($k => [ map { $self->new_from_struct($inner_class, $_)  } @{ $value->{ $k } } ] ) } keys %$value 
        });
      }
    } else {
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
