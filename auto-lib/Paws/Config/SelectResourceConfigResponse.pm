# Generated from json/callresult_class.tt

package Paws::Config::SelectResourceConfigResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Config::Types qw/Config_QueryInfo/;
  has NextToken => (is => 'ro', isa => Str);
  has QueryInfo => (is => 'ro', isa => Config_QueryInfo);
  has Results => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Results' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'QueryInfo' => {
                                'type' => 'Config_QueryInfo',
                                'class' => 'Paws::Config::QueryInfo'
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


### main pod documentation begin ###

=head1 NAME

Paws::Config::SelectResourceConfigResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 QueryInfo => Config_QueryInfo

Returns the C<QueryInfo> object.


=head2 Results => ArrayRef[Str|Undef]

Returns the results for the SQL query.


=head2 _request_id => Str


=cut

1;