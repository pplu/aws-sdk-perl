package Paws::API::Builder::restjson {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;
  extends 'Paws::API::Builder';

  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{ result_wrapped } });
  has parameter_role => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    if ($self->service eq 'glacier') {
      return "Paws::Net::GlacierCaller";
    } else {
      return "Paws::Net::RestJsonCaller"; 
    }
  });

}
1;
