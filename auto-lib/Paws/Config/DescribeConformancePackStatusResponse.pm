# Generated from json/callresult_class.tt

package Paws::Config::DescribeConformancePackStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_ConformancePackStatusDetail/;
  has ConformancePackStatusDetails => (is => 'ro', isa => ArrayRef[Config_ConformancePackStatusDetail]);
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
               'ConformancePackStatusDetails' => {
                                                   'class' => 'Paws::Config::ConformancePackStatusDetail',
                                                   'type' => 'ArrayRef[Config_ConformancePackStatusDetail]'
                                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConformancePackStatusResponse

=head1 ATTRIBUTES


=head2 ConformancePackStatusDetails => ArrayRef[Config_ConformancePackStatusDetail]

A list of C<ConformancePackStatusDetail> objects.


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;