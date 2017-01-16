use Paws::JsonParamsService::Object;

package Paws::JsonParamsService::MapOfArrayOfObject;
  use Moose;
  with 'Paws::API::StrToObjMapParser';

  has Map => (is => 'ro', isa => 'HashRef[ArrayRef[Paws::JsonParamsService::Object]]');
1;
