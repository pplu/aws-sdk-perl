
package Paws::Appflow::DescribeConnectorEntityResponse;
  use Moose;
  has ConnectorEntityFields => (is => 'ro', isa => 'ArrayRef[Paws::Appflow::ConnectorEntityField]', traits => ['NameInRequest'], request_name => 'connectorEntityFields', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::DescribeConnectorEntityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorEntityFields => ArrayRef[L<Paws::Appflow::ConnectorEntityField>]

Describes the fields for that connector entity. For example, for an
I<account> entity, the fields would be I<account name>, I<account ID>,
and so on.


=head2 _request_id => Str


=cut

