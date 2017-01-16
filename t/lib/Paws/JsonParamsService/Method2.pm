use Paws::JsonParamsService::Method1Return;

package Paws::JsonParamsService::Method2;
  use Moose;

  has response => (isa => 'Str', is => 'ro', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Method2Result');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::JsonParamsService::Method1Return');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'Method2Result');
1;
