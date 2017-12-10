package Paws::CodePipeline::AWSSessionCredentials;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', request_name => 'accessKeyId', traits => ['NameInRequest'], required => 1);
  has SecretAccessKey => (is => 'ro', isa => 'Str', request_name => 'secretAccessKey', traits => ['NameInRequest'], required => 1);
  has SessionToken => (is => 'ro', isa => 'Str', request_name => 'sessionToken', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::AWSSessionCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::AWSSessionCredentials object:

  $service_obj->Method(Att1 => { AccessKeyId => $value, ..., SessionToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::AWSSessionCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyId

=head1 DESCRIPTION

Represents an AWS session credentials object. These credentials are
temporary credentials that are issued by AWS Secure Token Service
(STS). They can be used to access input and output artifacts in the
Amazon S3 bucket used to store artifact for the pipeline in AWS
CodePipeline.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKeyId => Str

  The access key for the session.


=head2 B<REQUIRED> SecretAccessKey => Str

  The secret access key for the session.


=head2 B<REQUIRED> SessionToken => Str

  The token for the session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

