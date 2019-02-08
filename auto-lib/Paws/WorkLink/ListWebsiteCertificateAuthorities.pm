
package Paws::WorkLink::ListWebsiteCertificateAuthorities;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWebsiteCertificateAuthorities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listWebsiteCertificateAuthorities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::ListWebsiteCertificateAuthoritiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::ListWebsiteCertificateAuthorities - Arguments for method ListWebsiteCertificateAuthorities on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWebsiteCertificateAuthorities on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method ListWebsiteCertificateAuthorities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWebsiteCertificateAuthorities.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $ListWebsiteCertificateAuthoritiesResponse =
      $worklink->ListWebsiteCertificateAuthorities(
      FleetArn   => 'MyFleetArn',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListWebsiteCertificateAuthoritiesResponse->NextToken;
    my $WebsiteCertificateAuthorities =
      $ListWebsiteCertificateAuthoritiesResponse->WebsiteCertificateAuthorities;

# Returns a L<Paws::WorkLink::ListWebsiteCertificateAuthoritiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/ListWebsiteCertificateAuthorities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.



=head2 MaxResults => Int

The maximum number of results to be included in the next page.



=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWebsiteCertificateAuthorities in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

