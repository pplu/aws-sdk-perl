
package Paws::IAM::UpdateSigningCertificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSigningCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateSigningCertificate - Arguments for method UpdateSigningCertificate on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSigningCertificate on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UpdateSigningCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSigningCertificate.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To change the active status of a signing certificate for an IAM user
    # The following command changes the status of a signing certificate for a
    # user named Bob to Inactive.
    $iam->UpdateSigningCertificate(
      {
        'CertificateId' => 'TA7SMP42TDN5Z26OBPJE7EXAMPLE',
        'Status'        => 'Inactive',
        'UserName'      => 'Bob'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UpdateSigningCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The ID of the signing certificate you want to update.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that can
consist of any upper or lowercased letter or digit.



=head2 B<REQUIRED> Status => Str

The status you want to assign to the certificate. C<Active> means that
the certificate can be used for API calls to AWS C<Inactive> means that
the certificate cannot be used.

Valid values are: C<"Active">, C<"Inactive">

=head2 UserName => Str

The name of the IAM user the signing certificate belongs to.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSigningCertificate in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

