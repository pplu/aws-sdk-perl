# Generated from default/object.tt
package Paws::Personalize::S3DataConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has KmsKeyArn => (is => 'ro', isa => Str);
  has Path => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Path' => 1
                  },
  'NameInRequest' => {
                       'Path' => 'path',
                       'KmsKeyArn' => 'kmsKeyArn'
                     },
  'types' => {
               'KmsKeyArn' => {
                                'type' => 'Str'
                              },
               'Path' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::S3DataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::S3DataConfig object:

  $service_obj->Method(Att1 => { KmsKeyArn => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::S3DataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyArn

=head1 DESCRIPTION

The configuration details of an Amazon S3 input or output bucket.

=head1 ATTRIBUTES


=head2 KmsKeyArn => Str

  The Amazon Resource Name (ARN) of the Amazon Key Management Service
(KMS) key that Amazon Personalize uses to encrypt or decrypt the input
and output files of a batch inference job.


=head2 B<REQUIRED> Path => Str

  The file path of the Amazon S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

