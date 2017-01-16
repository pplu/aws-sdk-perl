package Paws::JsonParamsService::MapOfArrayOfString;
  use Moose;
  with 'Paws::API::StrToNativeMapParser';

  has Map => (is => 'ro', isa => 'HashRef[ArrayRef[Str|Undef]]');
1;
