
package Paws::EC2::DescribeClassicLinkInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ClassicLinkInstance/;
  has Instances => (is => 'ro', isa => ArrayRef[EC2_ClassicLinkInstance]);
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
               'Instances' => {
                                'class' => 'Paws::EC2::ClassicLinkInstance',
                                'type' => 'ArrayRef[EC2_ClassicLinkInstance]'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Instances' => 'instancesSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClassicLinkInstancesResult

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[EC2_ClassicLinkInstance]

Information about one or more linked EC2-Classic instances.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

