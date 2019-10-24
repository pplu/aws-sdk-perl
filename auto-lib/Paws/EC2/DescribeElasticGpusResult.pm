
package Paws::EC2::DescribeElasticGpusResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::EC2::Types qw/EC2_ElasticGpus/;
  has ElasticGpuSet => (is => 'ro', isa => ArrayRef[EC2_ElasticGpus]);
  has MaxResults => (is => 'ro', isa => Int);
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
               'ElasticGpuSet' => {
                                    'class' => 'Paws::EC2::ElasticGpus',
                                    'type' => 'ArrayRef[EC2_ElasticGpus]'
                                  },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ElasticGpuSet' => 'elasticGpuSet',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeElasticGpusResult

=head1 ATTRIBUTES


=head2 ElasticGpuSet => ArrayRef[EC2_ElasticGpus]

Information about the Elastic Graphics accelerators.


=head2 MaxResults => Int

The total number of items to return. If the total number of items
available is more than the value specified in max-items then a
Next-Token will be provided in the output that you can use to resume
pagination.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

