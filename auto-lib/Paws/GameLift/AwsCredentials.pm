package Paws::GameLift::AwsCredentials;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str');
  has SecretAccessKey => (is => 'ro', isa => 'Str');
  has SessionToken => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::AwsCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::AwsCredentials object:

  $service_obj->Method(Att1 => { AccessKeyId => $value, ..., SessionToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::AwsCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessKeyId

=head1 DESCRIPTION

AWS access credentials sometimes used for uploading game build files to
Amazon GameLift. They are valid for a limited time. If they expire
before you upload your game build, get a new set by calling
RequestUploadCredentials.

=head1 ATTRIBUTES


=head2 AccessKeyId => Str

  Access key for an AWS account.


=head2 SecretAccessKey => Str

  Secret key for an AWS account.


=head2 SessionToken => Str

  Token specific to a build ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

