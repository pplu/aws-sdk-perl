
package Paws::ES::GetUpgradeStatus;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUpgradeStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/upgradeDomain/{DomainName}/status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::GetUpgradeStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::GetUpgradeStatus - Arguments for method GetUpgradeStatus on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUpgradeStatus on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method GetUpgradeStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUpgradeStatus.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $GetUpgradeStatusResponse = $es->GetUpgradeStatus(
      DomainName => 'MyDomainName',

    );

    # Results:
    my $StepStatus  = $GetUpgradeStatusResponse->StepStatus;
    my $UpgradeName = $GetUpgradeStatusResponse->UpgradeName;
    my $UpgradeStep = $GetUpgradeStatusResponse->UpgradeStep;

    # Returns a L<Paws::ES::GetUpgradeStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/GetUpgradeStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUpgradeStatus in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

