# Generated from json/callresult_class.tt

package Paws::Config::DescribeRetentionConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_RetentionConfiguration/;
  has NextToken => (is => 'ro', isa => Str);
  has RetentionConfigurations => (is => 'ro', isa => ArrayRef[Config_RetentionConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RetentionConfigurations' => {
                                              'class' => 'Paws::Config::RetentionConfiguration',
                                              'type' => 'ArrayRef[Config_RetentionConfiguration]'
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

Paws::Config::DescribeRetentionConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 RetentionConfigurations => ArrayRef[Config_RetentionConfiguration]

Returns a retention configuration object.


=head2 _request_id => Str


=cut

1;