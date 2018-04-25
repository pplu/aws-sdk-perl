package Paws::API::Builder::EC2 {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;

  extends 'Paws::API::Builder';

  has '+parameter_role' => (
    default => sub {
      return "Paws::Net::EC2Caller"
    },
  );

  has '+flattened_arrays' => (default => '1');

}

1;
