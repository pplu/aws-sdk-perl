
package Paws::ACM::ListCertificates;
  use Moose;
  has CertificateStatuses => (is => 'ro', isa => 'ArrayRef[Str]');
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACM::ListCertificatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ListCertificates - Arguments for method ListCertificates on Paws::ACM

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCertificates on the 
AWS Certificate Manager service. Use the attributes of this class
as arguments to method ListCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCertificates.

As an example:

  $service_obj->ListCertificates(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CertificateStatuses => ArrayRef[Str]

Identifies the statuses of the ACM Certificates for which you want to
retrieve the ARNs. This can be one or more of the following values:

=over

=item * C<PENDING_VALIDATION>

=item * C<ISSUED>

=item * C<INACTIVE>

=item * C<EXPIRED>

=item * C<VALIDATION_TIMED_OUT>

=item * C<REVOKED>

=item * C<FAILED>

=back




=head2 MaxItems => Int

Specify this parameter when paginating results to indicate the maximum
number of ACM Certificates that you want to display for each response.
If there are additional certificates beyond the maximum you specify,
use the C<NextToken> value in your next call to the C<ListCertificates>
action.



=head2 NextToken => Str

String that contains an opaque marker of the next ACM Certificate ARN
to be displayed. Use this parameter when paginating results, and only
in a subsequent request after you've received a response where the
results have been truncated. Set it to an empty string the first time
you call this action, and set it to the value of the C<NextToken>
element you receive in the response object for subsequent calls.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCertificates in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

