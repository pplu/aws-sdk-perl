
package Paws::AppRunner::DescribeCustomDomainsResponse;
  use Moose;
  has CustomDomains => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::CustomDomain]', required => 1);
  has DNSTarget => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::DescribeCustomDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomDomains => ArrayRef[L<Paws::AppRunner::CustomDomain>]

A list of descriptions of custom domain names that are associated with
the service. In a paginated request, the request returns up to
C<MaxResults> records per call.


=head2 B<REQUIRED> DNSTarget => Str

The App Runner subdomain of the App Runner service. The associated
custom domain names are mapped to this target name.


=head2 NextToken => Str

The token that you can pass in a subsequent request to get the next
result page. It's returned in a paginated request.


=head2 B<REQUIRED> ServiceArn => Str

The Amazon Resource Name (ARN) of the App Runner service whose
associated custom domain names you want to describe.


=head2 _request_id => Str


=cut

1;