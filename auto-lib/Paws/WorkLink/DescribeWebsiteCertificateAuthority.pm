
package Paws::WorkLink::DescribeWebsiteCertificateAuthority;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str', required => 1);
  has WebsiteCaId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWebsiteCertificateAuthority');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeWebsiteCertificateAuthority');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::DescribeWebsiteCertificateAuthorityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeWebsiteCertificateAuthority - Arguments for method DescribeWebsiteCertificateAuthority on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWebsiteCertificateAuthority on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method DescribeWebsiteCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWebsiteCertificateAuthority.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $DescribeWebsiteCertificateAuthorityResponse =
      $worklink->DescribeWebsiteCertificateAuthority(
      FleetArn    => 'MyFleetArn',
      WebsiteCaId => 'MyId',

      );

    # Results:
    my $Certificate = $DescribeWebsiteCertificateAuthorityResponse->Certificate;
    my $CreatedTime = $DescribeWebsiteCertificateAuthorityResponse->CreatedTime;
    my $DisplayName = $DescribeWebsiteCertificateAuthorityResponse->DisplayName;

# Returns a L<Paws::WorkLink::DescribeWebsiteCertificateAuthorityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/DescribeWebsiteCertificateAuthority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.



=head2 B<REQUIRED> WebsiteCaId => Str

A unique identifier for the certificate authority.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWebsiteCertificateAuthority in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

