package Paws::IoT::PresignedUrlConfig;
  use Moose;
  has ExpiresInSec => (is => 'ro', isa => 'Int', request_name => 'expiresInSec', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::PresignedUrlConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::PresignedUrlConfig object:

  $service_obj->Method(Att1 => { ExpiresInSec => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::PresignedUrlConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ExpiresInSec

=head1 DESCRIPTION

Configuration for pre-signed S3 URLs.

=head1 ATTRIBUTES


=head2 ExpiresInSec => Int

  How long (in seconds) pre-signed URLs are valid. Valid values are 60 -
3600, the default value is 3600 seconds. Pre-signed URLs are generated
when Jobs receives an MQTT request for the job document.


=head2 RoleArn => Str

  The ARN of an IAM role that grants grants permission to download files
from the S3 bucket where the job data/updates are stored. The role must
also grant permission for IoT to download the files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

