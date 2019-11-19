# Generated from json/callresult_class.tt

package Paws::SSM::DescribeInstanceInformationResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_InstanceInformation/;
  has InstanceInformationList => (is => 'ro', isa => ArrayRef[SSM_InstanceInformation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'InstanceInformationList' => {
                                              'class' => 'Paws::SSM::InstanceInformation',
                                              'type' => 'ArrayRef[SSM_InstanceInformation]'
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

Paws::SSM::DescribeInstanceInformationResult

=head1 ATTRIBUTES


=head2 InstanceInformationList => ArrayRef[SSM_InstanceInformation]

The instance information list.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;