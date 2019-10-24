# Generated from json/callresult_class.tt

package Paws::OpsWorksCM::DescribeServersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::OpsWorksCM::Types qw/OpsWorksCM_Server/;
  has NextToken => (is => 'ro', isa => Str);
  has Servers => (is => 'ro', isa => ArrayRef[OpsWorksCM_Server]);

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
               'Servers' => {
                              'class' => 'Paws::OpsWorksCM::Server',
                              'type' => 'ArrayRef[OpsWorksCM_Server]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeServersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

This is not currently implemented for C<DescribeServers> requests.


=head2 Servers => ArrayRef[OpsWorksCM_Server]

Contains the response to a C<DescribeServers> request.

I<For Puppet Server:>
C<DescribeServersResponse$Servers$EngineAttributes> contains
PUPPET_API_CA_CERT. This is the PEM-encoded CA certificate that is used
by the Puppet API over TCP port number 8140. The CA certificate is also
used to sign node certificates.


=head2 _request_id => Str


=cut

1;