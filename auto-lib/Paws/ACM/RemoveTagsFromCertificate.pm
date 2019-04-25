
package Paws::ACM::RemoveTagsFromCertificate;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ACM::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::RemoveTagsFromCertificate - Arguments for method RemoveTagsFromCertificate on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromCertificate on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method RemoveTagsFromCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromCertificate.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    $acm->RemoveTagsFromCertificate(
      CertificateArn => 'MyArn',
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/RemoveTagsFromCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

String that contains the ARN of the ACM Certificate with one or more
tags that you want to remove. This must be of the form:

C<arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012>

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::ACM::Tag>]

The key-value pair that defines the tag to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromCertificate in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

