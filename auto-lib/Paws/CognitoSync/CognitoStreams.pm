package Paws::CognitoSync::CognitoStreams;
  use Moose;
  has RoleArn => (is => 'ro', isa => 'Str');
  has StreamingStatus => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::CognitoStreams

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoSync::CognitoStreams object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., StreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoSync::CognitoStreams object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

Configuration options for configure Cognito streams.

=head1 ATTRIBUTES


=head2 RoleArn => Str

  The ARN of the role Amazon Cognito can assume in order to publish to
the stream. This role must grant access to Amazon Cognito
(cognito-sync) to invoke PutRecord on your Cognito stream.


=head2 StreamingStatus => Str

  Status of the Cognito streams. Valid values are:

ENABLED - Streaming of updates to identity pool is enabled.

DISABLED - Streaming of updates to identity pool is disabled. Bulk
publish will also fail if StreamingStatus is DISABLED.


=head2 StreamName => Str

  The name of the Cognito stream to receive updates. This stream must be
in the developers account and in the same region as the identity pool.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

