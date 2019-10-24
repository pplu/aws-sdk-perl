
package Paws::EC2::DescribeVpcAttributeResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_AttributeBooleanValue/;
  has EnableDnsHostnames => (is => 'ro', isa => EC2_AttributeBooleanValue);
  has EnableDnsSupport => (is => 'ro', isa => EC2_AttributeBooleanValue);
  has VpcId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcId' => {
                            'type' => 'Str'
                          },
               'EnableDnsHostnames' => {
                                         'class' => 'Paws::EC2::AttributeBooleanValue',
                                         'type' => 'EC2_AttributeBooleanValue'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EnableDnsSupport' => {
                                       'class' => 'Paws::EC2::AttributeBooleanValue',
                                       'type' => 'EC2_AttributeBooleanValue'
                                     }
             },
  'NameInRequest' => {
                       'VpcId' => 'vpcId',
                       'EnableDnsHostnames' => 'enableDnsHostnames',
                       'EnableDnsSupport' => 'enableDnsSupport'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcAttributeResult

=head1 ATTRIBUTES


=head2 EnableDnsHostnames => EC2_AttributeBooleanValue

Indicates whether the instances launched in the VPC get DNS hostnames.
If this attribute is C<true>, instances in the VPC get DNS hostnames;
otherwise, they do not.


=head2 EnableDnsSupport => EC2_AttributeBooleanValue

Indicates whether DNS resolution is enabled for the VPC. If this
attribute is C<true>, the Amazon DNS server resolves DNS hostnames for
your instances to their corresponding IP addresses; otherwise, it does
not.


=head2 VpcId => Str

The ID of the VPC.


=head2 _request_id => Str


=cut

