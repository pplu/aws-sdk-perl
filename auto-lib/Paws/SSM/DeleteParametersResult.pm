# Generated from json/callresult_class.tt

package Paws::SSM::DeleteParametersResult;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::SSM::Types qw//;
  has DeletedParameters => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has InvalidParameters => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InvalidParameters' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'DeletedParameters' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteParametersResult

=head1 ATTRIBUTES


=head2 DeletedParameters => ArrayRef[Str|Undef]

The names of the deleted parameters.


=head2 InvalidParameters => ArrayRef[Str|Undef]

The names of parameters that weren't deleted because the parameters are
not valid.


=head2 _request_id => Str


=cut

1;