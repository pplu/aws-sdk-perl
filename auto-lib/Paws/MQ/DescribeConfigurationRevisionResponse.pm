
package Paws::MQ::DescribeConfigurationRevisionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw//;
  has ConfigurationId => (is => 'ro', isa => Str);
  has Created => (is => 'ro', isa => Str);
  has Data => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationId' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Created' => {
                              'type' => 'Str'
                            },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Data' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'ConfigurationId' => 'configurationId',
                       'Created' => 'created',
                       'Description' => 'description',
                       'Data' => 'data'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeConfigurationRevisionResponse

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

Required. The unique ID that Amazon MQ generates for the configuration.


=head2 Created => Str

Required. The date and time of the configuration.


=head2 Data => Str

Required. The base64-encoded XML configuration.


=head2 Description => Str

The description of the configuration.


=head2 _request_id => Str


=cut

