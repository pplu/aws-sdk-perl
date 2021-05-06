
package Paws::DS::ListCertificates;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCertificates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::ListCertificatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::ListCertificates - Arguments for method ListCertificates on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCertificates on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method ListCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCertificates.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $ListCertificatesResult = $ds->ListCertificates(
      DirectoryId => 'MyDirectoryId',
      Limit       => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $CertificatesInfo = $ListCertificatesResult->CertificatesInfo;
    my $NextToken        = $ListCertificatesResult->NextToken;

    # Returns a L<Paws::DS::ListCertificatesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/ListCertificates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory.



=head2 Limit => Int

The number of items that should show up on one page



=head2 NextToken => Str

A token for requesting another page of certificates if the C<NextToken>
response element indicates that more certificates are available. Use
the value of the returned C<NextToken> element in your request until
the token comes back as C<null>. Pass C<null> if this is the first
call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCertificates in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

