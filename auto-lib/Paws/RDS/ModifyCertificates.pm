
package Paws::RDS::ModifyCertificates;
  use Moose;
  has CertificateIdentifier => (is => 'ro', isa => 'Str');
  has RemoveCustomerOverride => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyCertificatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCertificatesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyCertificates - Arguments for method ModifyCertificates on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCertificates on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ModifyCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCertificates.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $ModifyCertificatesResult = $rds->ModifyCertificates(
      CertificateIdentifier  => 'MyString',    # OPTIONAL
      RemoveCustomerOverride => 1,             # OPTIONAL
    );

    # Results:
    my $Certificate = $ModifyCertificatesResult->Certificate;

    # Returns a L<Paws::RDS::ModifyCertificatesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyCertificates>

=head1 ATTRIBUTES


=head2 CertificateIdentifier => Str

The new default certificate identifier to override the current one
with.

To determine the valid values, use the C<describe-certificates> CLI
command or the C<DescribeCertificates> API operation.



=head2 RemoveCustomerOverride => Bool

A value that indicates whether to remove the override for the default
certificate. If the override is removed, the default certificate is the
system default.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCertificates in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

