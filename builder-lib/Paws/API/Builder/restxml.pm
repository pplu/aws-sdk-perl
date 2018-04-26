package Paws::API::Builder::restxml {

  use Moose;
  extends 'Paws::API::Builder';

  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{ result_wrapped } });
  has parameter_role => (is => 'ro', lazy => 1, default => sub { return "Paws::Net::RestXmlCaller" });

}
1;
