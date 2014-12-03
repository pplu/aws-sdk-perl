package Test05Caller {
  use Moose::Role;
  with 'Paws::Net::Caller';

  sub do_call {
    my ($self, $call_class, @params) = @_;
    my $call = $self->new_with_coercions($call_class, @params);

    my $request = Paws::Net::APIRequest->new();
    $self->_api_caller($call_class, $call, $request);
    $self->sign($request);

use Data::Dumper;
print Dumper($request);

    return $request;
  }

}

1;
