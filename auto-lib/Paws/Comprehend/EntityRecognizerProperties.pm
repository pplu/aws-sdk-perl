# Generated from default/object.tt
package Paws::Comprehend::EntityRecognizerProperties;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Comprehend::Types qw/Comprehend_EntityRecognizerInputDataConfig Comprehend_VpcConfig Comprehend_EntityRecognizerMetadata/;
  has DataAccessRoleArn => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str);
  has EntityRecognizerArn => (is => 'ro', isa => Str);
  has InputDataConfig => (is => 'ro', isa => Comprehend_EntityRecognizerInputDataConfig);
  has LanguageCode => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has RecognizerMetadata => (is => 'ro', isa => Comprehend_EntityRecognizerMetadata);
  has Status => (is => 'ro', isa => Str);
  has SubmitTime => (is => 'ro', isa => Str);
  has TrainingEndTime => (is => 'ro', isa => Str);
  has TrainingStartTime => (is => 'ro', isa => Str);
  has VolumeKmsKeyId => (is => 'ro', isa => Str);
  has VpcConfig => (is => 'ro', isa => Comprehend_VpcConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Message' => {
                              'type' => 'Str'
                            },
               'DataAccessRoleArn' => {
                                        'type' => 'Str'
                                      },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'TrainingEndTime' => {
                                      'type' => 'Str'
                                    },
               'LanguageCode' => {
                                   'type' => 'Str'
                                 },
               'SubmitTime' => {
                                 'type' => 'Str'
                               },
               'RecognizerMetadata' => {
                                         'class' => 'Paws::Comprehend::EntityRecognizerMetadata',
                                         'type' => 'Comprehend_EntityRecognizerMetadata'
                                       },
               'TrainingStartTime' => {
                                        'type' => 'Str'
                                      },
               'InputDataConfig' => {
                                      'type' => 'Comprehend_EntityRecognizerInputDataConfig',
                                      'class' => 'Paws::Comprehend::EntityRecognizerInputDataConfig'
                                    },
               'VolumeKmsKeyId' => {
                                     'type' => 'Str'
                                   },
               'VpcConfig' => {
                                'type' => 'Comprehend_VpcConfig',
                                'class' => 'Paws::Comprehend::VpcConfig'
                              },
               'EntityRecognizerArn' => {
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

Paws::Comprehend::EntityRecognizerProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::EntityRecognizerProperties object:

  $service_obj->Method(Att1 => { DataAccessRoleArn => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::EntityRecognizerProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DataAccessRoleArn

=head1 DESCRIPTION

Describes information about an entity recognizer.

=head1 ATTRIBUTES


=head2 DataAccessRoleArn => Str

  The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM)
role that grants Amazon Comprehend read access to your input data.


=head2 EndTime => Str

  The time that the recognizer creation completed.


=head2 EntityRecognizerArn => Str

  The Amazon Resource Name (ARN) that identifies the entity recognizer.


=head2 InputDataConfig => Comprehend_EntityRecognizerInputDataConfig

  The input data properties of an entity recognizer.


=head2 LanguageCode => Str

  The language of the input documents. All documents must be in the same
language. Only English ("en") is currently supported.


=head2 Message => Str

  A description of the status of the recognizer.


=head2 RecognizerMetadata => Comprehend_EntityRecognizerMetadata

  Provides information about an entity recognizer.


=head2 Status => Str

  Provides the status of the entity recognizer.


=head2 SubmitTime => Str

  The time that the recognizer was submitted for processing.


=head2 TrainingEndTime => Str

  The time that training of the entity recognizer was completed.


=head2 TrainingStartTime => Str

  The time that training of the entity recognizer started.


=head2 VolumeKmsKeyId => Str

  ID for the AWS Key Management Service (KMS) key that Amazon Comprehend
uses to encrypt data on the storage volume attached to the ML compute
instance(s) that process the analysis job. The VolumeKmsKeyId can be
either of the following formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back



=head2 VpcConfig => Comprehend_VpcConfig

  Configuration parameters for a private Virtual Private Cloud (VPC)
containing the resources you are using for your custom entity
recognizer. For more information, see Amazon VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

