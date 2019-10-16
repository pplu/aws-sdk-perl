package Paws::JsonParamsService::MapOfArrayOfObject;
  use Moo;
  use Types::Standard qw/HashRef ArrayRef/;
  use Paws::JsonParamsService::Types qw/JsonParamsService_Object/;
  with 'Paws::API::StrToObjMapParser';

  has Map => (is => 'ro', isa => HashRef[ArrayRef[JsonParamsService_Object]]);

  sub params_map {
    our $Params_map ||= {
      'types' => {
          'Map' => { 'type' => 'HashRef[ArrayRef[JsonParamsService_Object]]', class => 'Paws::JsonParamsService::Object' },
      },
    };
    return $Params_map;
  }
1;
