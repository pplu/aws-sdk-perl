# Generated from json/callresult_class.tt

package Paws::ECR::DescribeRepositoriesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_Repository/;
  has NextToken => (is => 'ro', isa => Str);
  has Repositories => (is => 'ro', isa => ArrayRef[ECR_Repository]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Repositories' => 'repositories',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'Repositories' => {
                                   'class' => 'Paws::ECR::Repository',
                                   'type' => 'ArrayRef[ECR_Repository]'
                                 },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::ECR::DescribeRepositoriesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeRepositories>
request. When the results of a C<DescribeRepositories> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 Repositories => ArrayRef[ECR_Repository]

A list of repository objects corresponding to valid repositories.


=head2 _request_id => Str


=cut

1;