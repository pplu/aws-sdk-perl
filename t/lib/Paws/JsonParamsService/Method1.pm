use Paws::JsonParamsService::Method1Return;

package Paws::JsonParamsService::Method1;
  use Moo;
  use Types::Standard qw/Str Int Bool/;

  has response => (isa => Str, is => 'ro', required => 1);
  has status => (isa => Int, is => 'ro', default => 200);
  has dup_requestid => (isa => Bool, is => 'ro', default => 0);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'Method1');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::JsonParamsService::Method1Return');
  class_has _result_key => (isa => Str, is => 'ro');

  sub params_map {
    our $Params_map ||= {
      'types' => {
          'response' => { 'type' => 'Str' },
          'status' => { 'type' => 'Int' },
          'dup_requestid' => { 'type' => 'Bool' },
      },
    };
    return $Params_map;
  }
1;
