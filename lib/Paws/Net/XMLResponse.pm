package Paws::Net::XMLResponse {
  use Moose::Role;
  use XML::Simple qw//;
  use Carp qw(croak);
  use Paws::Exception;

  sub error_to_exception {
    my ($self, $struct, $call_object, $http_status, $content, $headers) = @_;

    my ($code, $error, $request_id);

    if (exists $struct->{Errors}){
      $error = $struct->{Errors}->[0]->{Error};
    } elsif (exists $struct->{Error}){
      $error = $struct->{Error};
    } else {
      $error = $struct;
    }

    if (exists $error->{Code}){
      $code = $error->{Code};
    } else {
      $code = $http_status;
    }

    if (exists $struct->{RequestId}) {
      $request_id = $struct->{RequestId};
    } elsif (exists $struct->{RequestID}){
      $request_id = $struct->{RequestID};
    } elsif (exists $headers->{ 'x-amzn-requestid' }) {
      $request_id = $headers->{ 'x-amzn-requestid' };
    } else {
      die "Cannot find RequestId in error message"
    }

    Paws::Exception->new(
      message => $error->{Message}, 
      code => $code, 
      request_id => $request_id,
      http_status => $http_status,
    );
  }

  sub unserialize_response {
    my ($self, $data) = @_;
    my $xml = XML::Simple::XMLin( $data,
            ForceArray    => qr/(?:item|Errors)/i,
            KeyAttr       => '',
            SuppressEmpty => undef,
    );
    return $xml;
  }

  sub handle_response_strtonativemap {
    my ($self, $att_class, $value) = @_;
    my $xml_keys = $att_class->xml_keys;
    my $xml_values = $att_class->xml_values;

    my $value_ref = ref($value);
    if ($value_ref eq 'HASH') {
      if (exists $value->{ member }) {
        $value = $value->{ member };
      } elsif (exists $value->{ entry }) {
        $value = $value->{ entry  };
      } elsif (keys %$value == 1) {
        $value = $value->{ (keys %$value)[0] };
      } else {
        #die "Can't detect the item that has the array in the response hash";
      }
      $value_ref = ref($value);
    }
        
    if ($value_ref eq 'ARRAY') {
      return $att_class->new(Map => { map { ( $_->{ $xml_keys } => $_->{ $xml_values } ) } @$value } );
    } elsif ($value_ref eq 'HASH') {
      return $att_class->new(Map => { $value->{ $xml_keys } => $value->{ $xml_values } } );
    }
  }

  sub handle_response_strtoobjmap {
    my ($self, $att_class, $value) = @_;
    my $xml_keys = $att_class->xml_keys;
    my $xml_values = $att_class->xml_values;

    my $value_ref = ref($value);
    if ($value_ref eq 'HASH') {
      if (exists $value->{ member }) {
        $value = $value->{ member };
      } elsif (exists $value->{ entry }) {
        $value = $value->{ entry  };
      } elsif (keys %$value == 1) {
        $value = $value->{ (keys %$value)[0] };
      } else {
        #die "Can't detect the item that has the array in the response hash";
      }
      $value_ref = ref($value);
    }
        
    my $inner_class = $att_class->meta->get_attribute('Map')->type_constraint->name;
    ($inner_class) = ($inner_class =~ m/\[(.*)\]$/);
    Paws->load_class("$inner_class");

    if ($value_ref eq 'ARRAY') {
      return $att_class->new(Map => { map { ( $_->{ $xml_keys } => $self->new_from_struct($inner_class, $_->{ $xml_values }) ) } @$value } );
    } elsif ($value_ref eq 'HASH') {
      return $att_class->new(Map => { $value->{ $xml_keys } => $self->new_from_struct($inner_class, $value->{ $xml_values }) });
    } elsif (not defined $value){
      return $att_class->new(Map => {});
    }  
  }
}

1;
