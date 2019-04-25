
package Paws::FMS::ListComplianceStatus;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComplianceStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::ListComplianceStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListComplianceStatus - Arguments for method ListComplianceStatus on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComplianceStatus on the
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method ListComplianceStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComplianceStatus.

=head1 SYNOPSIS

    my $fms = Paws->service('FMS');
    my $ListComplianceStatusResponse = $fms->ListComplianceStatus(
      PolicyId   => 'MyPolicyId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListComplianceStatusResponse->NextToken;
    my $PolicyComplianceStatusList =
      $ListComplianceStatusResponse->PolicyComplianceStatusList;

    # Returns a L<Paws::FMS::ListComplianceStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms/ListComplianceStatus>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the number of C<PolicyComplianceStatus> objects that you want
AWS Firewall Manager to return for this request. If you have more
C<PolicyComplianceStatus> objects than the number that you specify for
C<MaxResults>, the response includes a C<NextToken> value that you can
use to get another batch of C<PolicyComplianceStatus> objects.



=head2 NextToken => Str

If you specify a value for C<MaxResults> and you have more
C<PolicyComplianceStatus> objects than the number that you specify for
C<MaxResults>, AWS Firewall Manager returns a C<NextToken> value in the
response that allows you to list another group of
C<PolicyComplianceStatus> objects. For the second and subsequent
C<ListComplianceStatus> requests, specify the value of C<NextToken>
from the previous response to get information about another batch of
C<PolicyComplianceStatus> objects.



=head2 B<REQUIRED> PolicyId => Str

The ID of the AWS Firewall Manager policy that you want the details
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComplianceStatus in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

