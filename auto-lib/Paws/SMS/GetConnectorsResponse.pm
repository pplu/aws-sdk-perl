# Generated from json/callresult_class.tt

package Paws::SMS::GetConnectorsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_Connector/;
  has ConnectorList => (is => 'ro', isa => ArrayRef[SMS_Connector]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ConnectorList' => 'connectorList'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConnectorList' => {
                                    'class' => 'Paws::SMS::Connector',
                                    'type' => 'ArrayRef[SMS_Connector]'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetConnectorsResponse

=head1 ATTRIBUTES


=head2 ConnectorList => ArrayRef[SMS_Connector]

Information about the registered connectors.


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
null when there are no more results to return.


=head2 _request_id => Str


=cut

1;