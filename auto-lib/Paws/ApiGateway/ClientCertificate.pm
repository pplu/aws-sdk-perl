
package Paws::ApiGateway::ClientCertificate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw/ApiGateway_MapOfStringToString/;
  has ClientCertificateId => (is => 'ro', isa => Str);
  has CreatedDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has ExpirationDate => (is => 'ro', isa => Str);
  has PemEncodedCertificate => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ApiGateway_MapOfStringToString);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PemEncodedCertificate' => {
                                            'type' => 'Str'
                                          },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'ClientCertificateId' => {
                                          'type' => 'Str'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::ApiGateway::MapOfStringToString',
                           'type' => 'ApiGateway_MapOfStringToString'
                         },
               'ExpirationDate' => {
                                     'type' => 'Str'
                                   },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PemEncodedCertificate' => 'pemEncodedCertificate',
                       'CreatedDate' => 'createdDate',
                       'ClientCertificateId' => 'clientCertificateId',
                       'Tags' => 'tags',
                       'ExpirationDate' => 'expirationDate',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ClientCertificate

=head1 ATTRIBUTES


=head2 ClientCertificateId => Str

The identifier of the client certificate.


=head2 CreatedDate => Str

The timestamp when the client certificate was created.


=head2 Description => Str

The description of the client certificate.


=head2 ExpirationDate => Str

The timestamp when the client certificate will expire.


=head2 PemEncodedCertificate => Str

The PEM-encoded public key of the client certificate, which can be used
to configure certificate authentication in the integration endpoint .


=head2 Tags => ApiGateway_MapOfStringToString

The collection of tags. Each tag element is associated with a given
resource.


=head2 _request_id => Str


=cut

