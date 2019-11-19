# Generated from json/callresult_class.tt

package Paws::Discovery::DescribeConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_DescribeConfigurationsAttribute/;
  has Configurations => (is => 'ro', isa => ArrayRef[Discovery_DescribeConfigurationsAttribute]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Configurations' => 'configurations'
                     },
  'types' => {
               'Configurations' => {
                                     'type' => 'ArrayRef[Discovery_DescribeConfigurationsAttribute]',
                                     'class' => 'Paws::Discovery::DescribeConfigurationsAttribute'
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

Paws::Discovery::DescribeConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[Discovery_DescribeConfigurationsAttribute]

A key in the response map. The value is an array of data.


=head2 _request_id => Str


=cut

1;