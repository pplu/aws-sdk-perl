use Paws::JsonParamsService::Object;
use Paws::JsonParamsService::MapOfArrayOfString;
use Paws::JsonParamsService::MapOfArrayOfObject;

package Paws::JsonParamsService::Method1Return;
  use Moose;
  has StringAttribute => (is => 'ro', isa => 'Str');
  has IntegerAttribute => (is => 'ro', isa => 'Int');
  has BooleanAttribute => (is => 'ro', isa => 'Bool');

  has ObjectAttribute => (is => 'ro', isa => 'Paws::JsonParamsService::Object');

  has ArrayOfString => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ArrayOfObject => (is => 'ro', isa => 'ArrayRef[Paws::JsonParamsService::Object]');

  has MapOfString => (is => 'ro', isa => 'HashRef[Str]');
  has MapOfObject => (is => 'ro', isa => 'HashRef[Paws::JsonParamsService::Object]');

  has MapOfArrayOfString => (is => 'ro', isa => 'Paws::JsonParamsService::MapOfArrayOfString');
  has MapOfArrayOfObject => (is => 'ro', isa => 'Paws::JsonParamsService::MapOfArrayOfObject');

  has _request_id => (is => 'ro', isa => 'Str');
1;
