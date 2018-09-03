package Paws::IoT::CodeSigning;
  use Moose;
  has AwsSignerJobId => (is => 'ro', isa => 'Str', request_name => 'awsSignerJobId', traits => ['NameInRequest']);
  has CustomCodeSigning => (is => 'ro', isa => 'Paws::IoT::CustomCodeSigning', request_name => 'customCodeSigning', traits => ['NameInRequest']);
  has StartSigningJobParameter => (is => 'ro', isa => 'Paws::IoT::StartSigningJobParameter', request_name => 'startSigningJobParameter', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CodeSigning

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CodeSigning object:

  $service_obj->Method(Att1 => { AwsSignerJobId => $value, ..., StartSigningJobParameter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CodeSigning object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsSignerJobId

=head1 DESCRIPTION

Describes the method to use when code signing a file.

=head1 ATTRIBUTES


=head2 AwsSignerJobId => Str

  The ID of the AWSSignerJob which was created to sign the file.


=head2 CustomCodeSigning => L<Paws::IoT::CustomCodeSigning>

  A custom method for code signing a file.


=head2 StartSigningJobParameter => L<Paws::IoT::StartSigningJobParameter>

  Describes the code-signing job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

