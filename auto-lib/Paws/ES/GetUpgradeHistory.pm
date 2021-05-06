
package Paws::ES::GetUpgradeHistory;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUpgradeHistory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/upgradeDomain/{DomainName}/history');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::GetUpgradeHistoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::GetUpgradeHistory - Arguments for method GetUpgradeHistory on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUpgradeHistory on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method GetUpgradeHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUpgradeHistory.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $GetUpgradeHistoryResponse = $es->GetUpgradeHistory(
      DomainName => 'MyDomainName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $GetUpgradeHistoryResponse->NextToken;
    my $UpgradeHistories = $GetUpgradeHistoryResponse->UpgradeHistories;

    # Returns a L<Paws::ES::GetUpgradeHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/GetUpgradeHistory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str





=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUpgradeHistory in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

