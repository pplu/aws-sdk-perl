
package Paws::MediaConvert::DisassociateCertificate;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateCertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/certificates/{arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::DisassociateCertificateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DisassociateCertificate - Arguments for method DisassociateCertificate on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateCertificate on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method DisassociateCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateCertificate.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $DisassociateCertificateResponse =
      $mediaconvert->DisassociateCertificate(
      Arn => 'My__string',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/DisassociateCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the ACM certificate that you want to disassociate from your
MediaConvert resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateCertificate in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

