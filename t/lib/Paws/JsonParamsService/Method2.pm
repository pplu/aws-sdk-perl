use Paws::JsonParamsService::Method1Return;

package Paws::JsonParamsService::Method2;
  use Moose;

  has response => (isa => 'Str', is => 'ro', required => 1);
  has status => (isa => 'Int', is => 'ro', default => 200);
  has dup_requestid => (isa => 'Bool', is => 'ro', default => 0);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Method2Result');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::JsonParamsService::Method1Return');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'Method2Result');
1;
