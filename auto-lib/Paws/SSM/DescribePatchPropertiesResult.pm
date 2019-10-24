# Generated from json/callresult_class.tt

package Paws::SSM::DescribePatchPropertiesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_PatchPropertyEntry/;
  has NextToken => (is => 'ro', isa => Str);
  has Properties => (is => 'ro', isa => ArrayRef[SSM_PatchPropertyEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Properties' => {
                                 'class' => 'Paws::SSM::PatchPropertyEntry',
                                 'type' => 'ArrayRef[SSM_PatchPropertyEntry]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchPropertiesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. (You use this token in
the next call.)


=head2 Properties => ArrayRef[SSM_PatchPropertyEntry]

A list of the properties for patches matching the filter request
parameters.


=head2 _request_id => Str


=cut

1;