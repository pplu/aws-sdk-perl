# Generated from json/callresult_class.tt

package Paws::Glue::GetPlanResponse;
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

Paws::Glue::GetPlanResponse

=head1 ATTRIBUTES


=head2 PythonScript => Str

A Python script to perform the mapping.


=head2 ScalaCode => Str

The Scala code to perform the mapping.


=head2 _request_id => Str


=cut

1;