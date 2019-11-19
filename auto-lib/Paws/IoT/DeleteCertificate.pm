
package Paws::IoT::DeleteCertificate;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoT::Types qw//;
  has CertificateId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ForceDelete => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteCertificate');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/certificates/{certificateId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ForceDelete' => {
                                  'type' => 'Bool'
                                },
               'CertificateId' => {
                                    'type' => 'Str'
                                  }
             },
  'ParamInQuery' => {
                      'ForceDelete' => 'forceDelete'
                    },
  'IsRequired' => {
                    'CertificateId' => 1
                  },
  'ParamInURI' => {
                    'CertificateId' => 'certificateId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteCertificate - Arguments for method DeleteCertificate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCertificate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCertificate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->DeleteCertificate(
      CertificateId => 'MyCertificateId',
      ForceDelete   => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The ID of the certificate. (The last part of the certificate ARN
contains the certificate ID.)



=head2 ForceDelete => Bool

Forces the deletion of a certificate if it is inactive and is not
attached to an IoT thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

