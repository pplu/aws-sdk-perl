package Paws::Forecast::EncryptionConfig;
  use Moose;
  has KMSKeyArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::EncryptionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::EncryptionConfig object:

  $service_obj->Method(Att1 => { KMSKeyArn => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::EncryptionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->KMSKeyArn

=head1 DESCRIPTION

An AWS Key Management Service (KMS) key and an AWS Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the
key. This object is optionally submitted in the CreateDataset and
CreatePredictor requests.

=head1 ATTRIBUTES


=head2 B<REQUIRED> KMSKeyArn => Str

  The Amazon Resource Name (ARN) of an AWS Key Management Service (KMS)
key.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the AWS Identity and Access Management (IAM) role that
Amazon Forecast can assume to access the AWS KMS key.

Cross-account pass role is not allowed. If you pass a role that doesn't
belong to your account, an C<InvalidInputException> is thrown.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

