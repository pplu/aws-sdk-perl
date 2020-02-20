package Paws::SecurityHub::AwsCodeBuildProjectDetails;
  use Moose;
  has EncryptionKey => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::SecurityHub::AwsCodeBuildProjectEnvironment');
  has Name => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Paws::SecurityHub::AwsCodeBuildProjectSource');
  has VpcConfig => (is => 'ro', isa => 'Paws::SecurityHub::AwsCodeBuildProjectVpcConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCodeBuildProjectDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCodeBuildProjectDetails object:

  $service_obj->Method(Att1 => { EncryptionKey => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCodeBuildProjectDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionKey

=head1 DESCRIPTION

Information about an AWS CodeBuild project.

=head1 ATTRIBUTES


=head2 EncryptionKey => Str

  The AWS Key Management Service (AWS KMS) customer master key (CMK) used
to encrypt the build output artifacts.

You can specify either the Amazon Resource Name (ARN) of the CMK or, if
available, the CMK alias (using the format alias/alias-name).


=head2 Environment => L<Paws::SecurityHub::AwsCodeBuildProjectEnvironment>

  Information about the build environment for this build project.


=head2 Name => Str

  The name of the build project.


=head2 ServiceRole => Str

  The ARN of the IAM role that enables AWS CodeBuild to interact with
dependent AWS services on behalf of the AWS account.


=head2 Source => L<Paws::SecurityHub::AwsCodeBuildProjectSource>

  Information about the build input source code for this build project.


=head2 VpcConfig => L<Paws::SecurityHub::AwsCodeBuildProjectVpcConfig>

  Information about the VPC configuration that AWS CodeBuild accesses.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

