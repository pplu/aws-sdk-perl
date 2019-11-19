
package Paws::EC2::DescribeInstanceCreditSpecificationsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_InstanceCreditSpecification/;
  has InstanceCreditSpecifications => (is => 'ro', isa => ArrayRef[EC2_InstanceCreditSpecification]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'InstanceCreditSpecifications' => 'instanceCreditSpecificationSet',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstanceCreditSpecifications' => {
                                                   'class' => 'Paws::EC2::InstanceCreditSpecification',
                                                   'type' => 'ArrayRef[EC2_InstanceCreditSpecification]'
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

Paws::EC2::DescribeInstanceCreditSpecificationsResult

=head1 ATTRIBUTES


=head2 InstanceCreditSpecifications => ArrayRef[EC2_InstanceCreditSpecification]

Information about the credit option for CPU usage of an instance.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

