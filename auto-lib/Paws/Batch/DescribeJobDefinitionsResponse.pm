
package Paws::Batch::DescribeJobDefinitionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Batch::Types qw/Batch_JobDefinition/;
  has JobDefinitions => (is => 'ro', isa => ArrayRef[Batch_JobDefinition]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'JobDefinitions' => 'jobDefinitions'
                     },
  'types' => {
               'JobDefinitions' => {
                                     'type' => 'ArrayRef[Batch_JobDefinition]',
                                     'class' => 'Paws::Batch::JobDefinition'
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

Paws::Batch::DescribeJobDefinitionsResponse

=head1 ATTRIBUTES


=head2 JobDefinitions => ArrayRef[Batch_JobDefinition]

The list of job definitions.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeJobDefinitions>
request. When the results of a C<DescribeJobDefinitions> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

