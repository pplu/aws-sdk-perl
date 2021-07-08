
package Paws::ES::CreateOutboundCrossClusterSearchConnection;
  use Moose;
  has ConnectionAlias => (is => 'ro', isa => 'Str', required => 1);
  has DestinationDomainInfo => (is => 'ro', isa => 'Paws::ES::DomainInformation', required => 1);
  has SourceDomainInfo => (is => 'ro', isa => 'Paws::ES::DomainInformation', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOutboundCrossClusterSearchConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/ccs/outboundConnection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::CreateOutboundCrossClusterSearchConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CreateOutboundCrossClusterSearchConnection - Arguments for method CreateOutboundCrossClusterSearchConnection on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOutboundCrossClusterSearchConnection on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method CreateOutboundCrossClusterSearchConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOutboundCrossClusterSearchConnection.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $CreateOutboundCrossClusterSearchConnectionResponse =
      $es->CreateOutboundCrossClusterSearchConnection(
      ConnectionAlias       => 'MyConnectionAlias',
      DestinationDomainInfo => {
        DomainName => 'MyDomainName',    # min: 3, max: 28
        OwnerId    => 'MyOwnerId',       # min: 12, max: 12; OPTIONAL
        Region     => 'MyRegion',        # OPTIONAL
      },
      SourceDomainInfo => {
        DomainName => 'MyDomainName',    # min: 3, max: 28
        OwnerId    => 'MyOwnerId',       # min: 12, max: 12; OPTIONAL
        Region     => 'MyRegion',        # OPTIONAL
      },

      );

    # Results:
    my $ConnectionAlias =
      $CreateOutboundCrossClusterSearchConnectionResponse->ConnectionAlias;
    my $ConnectionStatus =
      $CreateOutboundCrossClusterSearchConnectionResponse->ConnectionStatus;
    my $CrossClusterSearchConnectionId =
      $CreateOutboundCrossClusterSearchConnectionResponse
      ->CrossClusterSearchConnectionId;
    my $DestinationDomainInfo =
      $CreateOutboundCrossClusterSearchConnectionResponse
      ->DestinationDomainInfo;
    my $SourceDomainInfo =
      $CreateOutboundCrossClusterSearchConnectionResponse->SourceDomainInfo;

# Returns a L<Paws::ES::CreateOutboundCrossClusterSearchConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/CreateOutboundCrossClusterSearchConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionAlias => Str

Specifies the connection alias that will be used by the customer for
this connection.



=head2 B<REQUIRED> DestinationDomainInfo => L<Paws::ES::DomainInformation>

Specifies the C<DomainInformation> for the destination Elasticsearch
domain.



=head2 B<REQUIRED> SourceDomainInfo => L<Paws::ES::DomainInformation>

Specifies the C<DomainInformation> for the source Elasticsearch domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOutboundCrossClusterSearchConnection in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

