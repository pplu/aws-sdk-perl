# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeVolumesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_Volume/;
  has Volumes => (is => 'ro', isa => ArrayRef[OpsWorks_Volume]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Volumes' => {
                              'class' => 'Paws::OpsWorks::Volume',
                              'type' => 'ArrayRef[OpsWorks_Volume]'
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

Paws::OpsWorks::DescribeVolumesResult

=head1 ATTRIBUTES


=head2 Volumes => ArrayRef[OpsWorks_Volume]

An array of volume IDs.


=head2 _request_id => Str


=cut

1;