
package Paws::MQ::DescribeConfigurationRevisionResponse;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationId');
  has Created => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'created');
  has Data => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'data');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');

  has _request_id => (is => 'ro', isa => 'Str');
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

