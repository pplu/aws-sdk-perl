
package Paws::RedShift::CreateHsmClientCertificate;
  use Moose;
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHsmClientCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateHsmClientCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHsmClientCertificateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateHsmClientCertificate - Arguments for method CreateHsmClientCertificate on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHsmClientCertificate on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateHsmClientCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHsmClientCertificate.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $CreateHsmClientCertificateResult =
      $redshift->CreateHsmClientCertificate(
      HsmClientCertificateIdentifier => 'MyString',
      Tags                           => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $HsmClientCertificate =
      $CreateHsmClientCertificateResult->HsmClientCertificate;

    # Returns a L<Paws::RedShift::CreateHsmClientCertificateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateHsmClientCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HsmClientCertificateIdentifier => Str

The identifier to be assigned to the new HSM client certificate that
the cluster will use to connect to the HSM to use the database
encryption keys.



=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

A list of tag instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHsmClientCertificate in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

