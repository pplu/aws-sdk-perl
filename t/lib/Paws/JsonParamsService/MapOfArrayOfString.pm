package Paws::JsonParamsService::MapOfArrayOfString;
  use Moo;
  use Types::Standard qw/HashRef ArrayRef Str Undef/;
  with 'Paws::API::StrToNativeMapParser';

  has Map => (is => 'ro', isa => HashRef[ArrayRef[Str|Undef]]);

  sub params_map {
    our $Params_map ||= {
      'types' => {
          'Map' => { 'type' => 'HashRef[ArrayRef[Str|Undef]]' },
      },
    };
    return $Params_map;
  }
1;
