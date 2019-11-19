# Generated from json/callargs_class.tt

package Paws::ACM::AddTagsToCertificate;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ACM::Types qw/ACM_Tag/;
  has CertificateArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ACM_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AddTagsToCertificate');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tags' => 1,
                    'CertificateArn' => 1
                  },
  'types' => {
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'Tags' => {
                           'type' => 'ArrayRef[ACM_Tag]',
                           'class' => 'Paws::ACM::Tag'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::AddTagsToCertificate - Arguments for method AddTagsToCertificate on L<Paws::ACM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToCertificate on the
L<AWS Certificate Manager|Paws::ACM> service. Use the attributes of this class
as arguments to method AddTagsToCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToCertificate.

=head1 SYNOPSIS

    my $acm = Paws->service('ACM');
    $acm->AddTagsToCertificate(
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm/AddTagsToCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

String that contains the ARN of the ACM certificate to which the tag is
to be applied. This must be of the form:

C<arn:aws:acm:region:123456789012:certificate/12345678-1234-1234-1234-123456789012>

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head2 B<REQUIRED> Tags => ArrayRef[ACM_Tag]

The key-value pair that defines the tag. The tag value is optional.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToCertificate in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

