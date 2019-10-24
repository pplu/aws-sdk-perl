# Generated from json/callresult_class.tt

package Paws::SSM::DescribeInstanceAssociationsStatusResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_InstanceAssociationStatusInfo/;
  has InstanceAssociationStatusInfos => (is => 'ro', isa => ArrayRef[SSM_InstanceAssociationStatusInfo]);
  has NextToken => (is => 'ro', isa => Str);

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
               'InstanceAssociationStatusInfos' => {
                                                     'class' => 'Paws::SSM::InstanceAssociationStatusInfo',
                                                     'type' => 'ArrayRef[SSM_InstanceAssociationStatusInfo]'
                                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstanceAssociationsStatusResult

=head1 ATTRIBUTES


=head2 InstanceAssociationStatusInfos => ArrayRef[SSM_InstanceAssociationStatusInfo]

Status information about the association.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;