package Paws::JsonParamsService::Object;
  use Moo;
  use Types::Standard qw/Str/;
  has Att1 => (is => 'ro', isa => Str);
  has Att2 => (is => 'ro', isa => Str);

  sub params_map {
    our $Params_map ||= {
      'types' => {
          'Att1' => { 'type' => 'Str' },
          'Att2' => { 'type' => 'Str' },
      },
    };
    return $Params_map;
  }
1;
