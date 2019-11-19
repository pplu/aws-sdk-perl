# Generated from json/callresult_class.tt

package Paws::LakeFormation::DescribeResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LakeFormation::Types qw/LakeFormation_ResourceInfo/;
  has ResourceInfo => (is => 'ro', isa => LakeFormation_ResourceInfo);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceInfo' => {
                                   'type' => 'LakeFormation_ResourceInfo',
                                   'class' => 'Paws::LakeFormation::ResourceInfo'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DescribeResourceResponse

=head1 ATTRIBUTES


=head2 ResourceInfo => LakeFormation_ResourceInfo

A structure containing information about an AWS Lake Formation
resource.


=head2 _request_id => Str


=cut

1;