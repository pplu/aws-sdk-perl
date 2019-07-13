
package Paws::IAM::GenerateOrganizationsAccessReport;
  use Moose;
  has EntityPath => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationsPolicyId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateOrganizationsAccessReport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GenerateOrganizationsAccessReportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GenerateOrganizationsAccessReportResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GenerateOrganizationsAccessReport - Arguments for method GenerateOrganizationsAccessReport on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateOrganizationsAccessReport on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GenerateOrganizationsAccessReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateOrganizationsAccessReport.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GenerateOrganizationsAccessReportResponse =
      $iam->GenerateOrganizationsAccessReport(
      EntityPath            => 'MyorganizationsEntityPathType',
      OrganizationsPolicyId => 'MyorganizationsPolicyIdType',     # OPTIONAL
      );

    # Results:
    my $JobId = $GenerateOrganizationsAccessReportResponse->JobId;

    # Returns a L<Paws::IAM::GenerateOrganizationsAccessReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GenerateOrganizationsAccessReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntityPath => Str

The path of the AWS Organizations entity (root, OU, or account). You
can build an entity path using the known structure of your
organization. For example, assume that your account ID is
C<123456789012> and its parent OU ID is C<ou-rge0-awsabcde>. The
organization root ID is C<r-f6g7h8i9j0example> and your organization ID
is C<o-a1b2c3d4e5>. Your entity path is
C<o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-rge0-awsabcde/123456789012>.



=head2 OrganizationsPolicyId => Str

The identifier of the AWS Organizations service control policy (SCP).
This parameter is optional.

This ID is used to generate information about when an account principal
that is limited by the SCP attempted to access an AWS service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateOrganizationsAccessReport in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

