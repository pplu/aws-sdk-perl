package Paws::JsonParamsService::Method3;
  use Moose;

  has response => (isa => 'Str', is => 'ro', required => 1);
  has status => (isa => 'Int', is => 'ro', default => 401);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Method3');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;
