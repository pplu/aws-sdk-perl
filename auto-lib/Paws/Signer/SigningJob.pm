# Generated from default/object.tt
package Paws::Signer::SigningJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Signer::Types qw/Signer_SigningMaterial Signer_Source Signer_SignedObject/;
  has CreatedAt => (is => 'ro', isa => Str);
  has JobId => (is => 'ro', isa => Str);
  has SignedObject => (is => 'ro', isa => Signer_SignedObject);
  has SigningMaterial => (is => 'ro', isa => Signer_SigningMaterial);
  has Source => (is => 'ro', isa => Signer_Source);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Source' => {
                             'type' => 'Signer_Source',
                             'class' => 'Paws::Signer::Source'
                           },
               'SigningMaterial' => {
                                      'type' => 'Signer_SigningMaterial',
                                      'class' => 'Paws::Signer::SigningMaterial'
                                    },
               'SignedObject' => {
                                   'class' => 'Paws::Signer::SignedObject',
                                   'type' => 'Signer_SignedObject'
                                 },
               'JobId' => {
                            'type' => 'Str'
                          },
               'CreatedAt' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'JobId' => 'jobId',
                       'CreatedAt' => 'createdAt',
                       'SignedObject' => 'signedObject',
                       'SigningMaterial' => 'signingMaterial',
                       'Source' => 'source',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SigningJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SigningJob object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SigningJob object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Contains information about a signing job.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The date and time that the signing job was created.


=head2 JobId => Str

  The ID of the signing job.


=head2 SignedObject => Signer_SignedObject

  A C<SignedObject> structure that contains information about a signing
job's signed code image.


=head2 SigningMaterial => Signer_SigningMaterial

  A C<SigningMaterial> object that contains the Amazon Resource Name
(ARN) of the certificate used for the signing job.


=head2 Source => Signer_Source

  A C<Source> that contains information about a signing job's code image
source.


=head2 Status => Str

  The status of the signing job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

