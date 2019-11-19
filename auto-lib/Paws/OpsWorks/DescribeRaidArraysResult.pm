# Generated from json/callresult_class.tt

package Paws::OpsWorks::DescribeRaidArraysResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorks::Types qw/OpsWorks_RaidArray/;
  has RaidArrays => (is => 'ro', isa => ArrayRef[OpsWorks_RaidArray]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RaidArrays' => {
                                 'class' => 'Paws::OpsWorks::RaidArray',
                                 'type' => 'ArrayRef[OpsWorks_RaidArray]'
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

Paws::OpsWorks::DescribeRaidArraysResult

=head1 ATTRIBUTES


=head2 RaidArrays => ArrayRef[OpsWorks_RaidArray]

A C<RaidArrays> object that describes the specified RAID arrays.


=head2 _request_id => Str


=cut

1;