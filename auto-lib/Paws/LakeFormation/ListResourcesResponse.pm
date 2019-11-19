# Generated from json/callresult_class.tt

package Paws::LakeFormation::ListResourcesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::LakeFormation::Types qw/LakeFormation_ResourceInfo/;
  has NextToken => (is => 'ro', isa => Str);
  has ResourceInfoList => (is => 'ro', isa => ArrayRef[LakeFormation_ResourceInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceInfoList' => {
                                       'type' => 'ArrayRef[LakeFormation_ResourceInfo]',
                                       'class' => 'Paws::LakeFormation::ResourceInfo'
                                     },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve these
resources.


=head2 ResourceInfoList => ArrayRef[LakeFormation_ResourceInfo]

A summary of the data lake resources.


=head2 _request_id => Str


=cut

1;