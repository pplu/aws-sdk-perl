# Generated from callresult_class.tt

package Paws::CloudFormation::DescribeAccountLimitsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudFormation::Types qw/CloudFormation_AccountLimit/;
  has AccountLimits => (is => 'ro', isa => ArrayRef[CloudFormation_AccountLimit]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccountLimits' => {
                                    'class' => 'Paws::CloudFormation::AccountLimit',
                                    'type' => 'ArrayRef[CloudFormation_AccountLimit]'
                                  },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeAccountLimitsOutput

=head1 ATTRIBUTES


=head2 AccountLimits => ArrayRef[CloudFormation_AccountLimit]

An account limit structure that contain a list of AWS CloudFormation
account limits and their values.


=head2 NextToken => Str

If the output exceeds 1 MB in size, a string that identifies the next
page of limits. If no additional page exists, this value is null.


=head2 _request_id => Str


=cut

