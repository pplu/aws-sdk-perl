
package Paws::LicenseManager::ListLicenses;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Filter]');
  has LicenseArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListLicenses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::ListLicensesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListLicenses - Arguments for method ListLicenses on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLicenses on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method ListLicenses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLicenses.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $ListLicensesResponse = $license -manager->ListLicenses(
      Filters => [
        {
          Name   => 'MyFilterName',              # OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      LicenseArns => [
        'MyArn', ...    # max: 2048
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Licenses  = $ListLicensesResponse->Licenses;
    my $NextToken = $ListLicensesResponse->NextToken;

    # Returns a L<Paws::LicenseManager::ListLicensesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/ListLicenses>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LicenseManager::Filter>]

Filters to scope the results. The following filters are supported:

=over

=item *

C<Beneficiary>

=item *

C<ProductSKU>

=item *

C<Fingerprint>

=item *

C<Status>

=back




=head2 LicenseArns => ArrayRef[Str|Undef]

Amazon Resource Names (ARNs) of the licenses.



=head2 MaxResults => Int

Maximum number of results to return in a single call.



=head2 NextToken => Str

Token for the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLicenses in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

