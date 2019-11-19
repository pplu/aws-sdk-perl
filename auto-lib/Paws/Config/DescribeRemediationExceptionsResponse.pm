# Generated from json/callresult_class.tt

package Paws::Config::DescribeRemediationExceptionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_RemediationException/;
  has NextToken => (is => 'ro', isa => Str);
  has RemediationExceptions => (is => 'ro', isa => ArrayRef[Config_RemediationException]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'RemediationExceptions' => {
                                            'type' => 'ArrayRef[Config_RemediationException]',
                                            'class' => 'Paws::Config::RemediationException'
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

Paws::Config::DescribeRemediationExceptionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 RemediationExceptions => ArrayRef[Config_RemediationException]

Returns a list of remediation exception objects.


=head2 _request_id => Str


=cut

1;