# Generated from json/callresult_class.tt

package Paws::DS::CreateComputerResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw/DS_Computer/;
  has Computer => (is => 'ro', isa => DS_Computer);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Computer' => {
                               'type' => 'DS_Computer',
                               'class' => 'Paws::DS::Computer'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateComputerResult

=head1 ATTRIBUTES


=head2 Computer => DS_Computer

A Computer object that represents the computer account.


=head2 _request_id => Str


=cut

1;