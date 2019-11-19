# Generated from json/callresult_class.tt

package Paws::Config::DescribeConformancePacksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConformancePackDetail/;
  has ConformancePackDetails => (is => 'ro', isa => ArrayRef[Config_ConformancePackDetail]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConformancePackDetails' => {
                                             'class' => 'Paws::Config::ConformancePackDetail',
                                             'type' => 'ArrayRef[Config_ConformancePackDetail]'
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

Paws::Config::DescribeConformancePacksResponse

=head1 ATTRIBUTES


=head2 ConformancePackDetails => ArrayRef[Config_ConformancePackDetail]

Returns a list of C<ConformancePackDetail> objects.


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;