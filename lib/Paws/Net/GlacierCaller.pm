package Paws::Net::GlacierCaller;
  use Moose::Role;
  use JSON::MaybeXS;

  with 'Paws::Net::RestJsonCaller';

  around prepare_request_for_call => sub {
    my ($orig, $self, @rest) = @_;

    my $request = $self->$orig(@rest);
    #TODO: assign '-' to AccountId if there is no AccountId. This may need to be done in

    $request->header('x-amz-glacier-version', $self->version);
    
    return $request;
  };
1;
