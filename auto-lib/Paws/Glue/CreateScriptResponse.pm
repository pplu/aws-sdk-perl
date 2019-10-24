# Generated from json/callresult_class.tt

package Paws::Glue::CreateScriptResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has PythonScript => (is => 'ro', isa => Str);
  has ScalaCode => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PythonScript' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ScalaCode' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateScriptResponse

=head1 ATTRIBUTES


=head2 PythonScript => Str

The Python script generated from the DAG.


=head2 ScalaCode => Str

The Scala code generated from the DAG.


=head2 _request_id => Str


=cut

1;