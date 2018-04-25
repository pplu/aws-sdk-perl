package Paws::API::Builder::json {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;

  extends 'Paws::API::Builder';

  has target_prefix => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{metadata}{ targetPrefix } });
  has json_version => (
    is => 'ro', 
    lazy => 1, 
    default => sub { 
      my $ver = $_[0]->api_struct->{metadata}->{ jsonVersion }; 
      return sprintf("%.1f", $ver) 
    }
  );
  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{ result_wrapped } });

}
1;
