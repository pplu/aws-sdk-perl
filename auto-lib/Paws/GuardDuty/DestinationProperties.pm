package Paws::GuardDuty::DestinationProperties;
  use Moose;
  has DestinationArn => (is => 'ro', isa => 'Str', request_name => 'destinationArn', traits => ['NameInRequest']);
  has KmsKeyArn => (is => 'ro', isa => 'Str', request_name => 'kmsKeyArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DestinationProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::DestinationProperties object:

  $service_obj->Method(Att1 => { DestinationArn => $value, ..., KmsKeyArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::DestinationProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationArn

=head1 DESCRIPTION

Contains the ARN of the resource to publish to, such as an S3 bucket,
and the ARN of the KMS key to use to encrypt published findings.

=head1 ATTRIBUTES


=head2 DestinationArn => Str

  The ARN of the resource to publish to.


=head2 KmsKeyArn => Str

  The ARN of the KMS key to use for encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

