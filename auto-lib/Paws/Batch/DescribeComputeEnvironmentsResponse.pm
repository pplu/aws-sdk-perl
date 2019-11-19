
package Paws::Batch::DescribeComputeEnvironmentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Batch::Types qw/Batch_ComputeEnvironmentDetail/;
  has ComputeEnvironments => (is => 'ro', isa => ArrayRef[Batch_ComputeEnvironmentDetail]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ComputeEnvironments' => 'computeEnvironments',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'ComputeEnvironments' => {
                                          'type' => 'ArrayRef[Batch_ComputeEnvironmentDetail]',
                                          'class' => 'Paws::Batch::ComputeEnvironmentDetail'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::Batch::DescribeComputeEnvironmentsResponse

=head1 ATTRIBUTES


=head2 ComputeEnvironments => ArrayRef[Batch_ComputeEnvironmentDetail]

The list of compute environments.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<DescribeComputeEnvironments> request. When the results of a
C<DescribeJobDefinitions> request exceed C<maxResults>, this value can
be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

