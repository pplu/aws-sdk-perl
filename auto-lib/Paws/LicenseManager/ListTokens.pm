
package Paws::LicenseManager::ListTokens;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TokenIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTokens');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::ListTokensResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ListTokens - Arguments for method ListTokens on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTokens on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method ListTokens.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTokens.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $ListTokensResponse = $license -manager->ListTokens(
      Filters => [
        {
          Name   => 'MyFilterName',              # OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyString',                  # OPTIONAL
      TokenIds   => [ 'MyString', ... ],         # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTokensResponse->NextToken;
    my $Tokens    = $ListTokensResponse->Tokens;

    # Returns a L<Paws::LicenseManager::ListTokensResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/ListTokens>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::LicenseManager::Filter>]

Filters to scope the results. The following filter is supported:

=over

=item *

C<LicenseArns>

=back




=head2 MaxResults => Int

Maximum number of results to return in a single call.



=head2 NextToken => Str

Token for the next set of results.



=head2 TokenIds => ArrayRef[Str|Undef]

Token IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTokens in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

