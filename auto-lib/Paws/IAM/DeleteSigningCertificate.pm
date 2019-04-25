
package Paws::IAM::DeleteSigningCertificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSigningCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeleteSigningCertificate - Arguments for method DeleteSigningCertificate on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSigningCertificate on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DeleteSigningCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSigningCertificate.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
   # To delete a signing certificate for an IAM user
   # The following command deletes the specified signing certificate for the IAM
   # user named Anika.
    $iam->DeleteSigningCertificate(
      {
        'CertificateId' => 'TA7SMP42TDN5Z26OBPJE7EXAMPLE',
        'UserName'      => 'Anika'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DeleteSigningCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The ID of the signing certificate to delete.

The format of this parameter, as described by its regex
(http://wikipedia.org/wiki/regex) pattern, is a string of characters
that can be upper- or lower-cased letters or digits.



=head2 UserName => Str

The name of the user the signing certificate belongs to.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSigningCertificate in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

