package Paws::JsonParamsService::Method1Return;
  use Moo;
  use Types::Standard qw/Str Int Bool ArrayRef HashRef Undef InstanceOf /;
  use Paws::JsonParamsService::Types qw/JsonParamsService_Object JsonParamsService_MapOfArrayOfString JsonParamsService_MapOfArrayOfObject/;
  has StringAttribute => (is => 'ro', isa => Str);
  has IntegerAttribute => (is => 'ro', isa => Int);
  has BooleanAttribute => (is => 'ro', isa => Bool);

  has ObjectAttribute => (is => 'ro', isa => JsonParamsService_Object);

  has ArrayOfString => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ArrayOfObject => (is => 'ro', isa => ArrayRef[JsonParamsService_Object]);

  has MapOfString => (is => 'ro', isa => HashRef[Str]);
  has MapOfObject => (is => 'ro', isa => HashRef[JsonParamsService_Object]);

  has MapOfArrayOfString => (is => 'ro', isa => JsonParamsService_MapOfArrayOfString);
  has MapOfArrayOfObject => (is => 'ro', isa => JsonParamsService_MapOfArrayOfObject);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    our $Params_map ||= {
      'types' => {
          'StringAttribute' => { 'type' => 'Str' },
          'IntegerAttribute' => { 'type' => 'Int' },
          'BooleanAttribute' => { 'type' => 'Bool' },
          'ObjectAttribute' => { 'type' => 'JsonParamsService_Object', class => 'Paws::JsonParamsService::Object' },
          'ArrayOfString' => { 'type' => 'ArrayRef[Str|Undef]' },
          'ArrayOfObject' => { 'type' => 'ArrayRef[JsonParamsService_Object]', class => 'Paws::JsonParamsService::Object' },
          'MapOfString' => { 'type' => 'HashRef[Str]' },
          'MapOfObject' => { 'type' => 'HashRef[JsonParamsService_Object]', class => 'Paws::JsonParamsService::Object' },
          'MapOfArrayOfString' => { 'type' => 'JsonParamsService_MapOfArrayOfString', class => 'Paws::JsonParamsService::MapOfArrayOfString' },
          'MapOfArrayOfObject' => { 'type' => 'JsonParamsService_MapOfArrayOfObject', class => 'Paws::JsonParamsService::MapOfArrayOfObject' },
      },
    };
    return $Params_map;
  }
1;
