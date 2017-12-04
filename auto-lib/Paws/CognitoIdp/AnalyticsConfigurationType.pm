package Paws::CognitoIdp::AnalyticsConfigurationType;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has ExternalId => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has UserDataShared => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AnalyticsConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::AnalyticsConfigurationType object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., UserDataShared => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::AnalyticsConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

The Amazon Pinpoint analytics configuration for collecting metrics for
a user pool.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The application ID for an Amazon Pinpoint application.


=head2 B<REQUIRED> ExternalId => Str

  The external ID.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of an IAM role that authorizes Amazon Cognito to publish events
to Amazon Pinpoint analytics.


=head2 UserDataShared => Bool

  If C<UserDataShared> is C<true>, Amazon Cognito will include user data
in the events it publishes to Amazon Pinpoint analytics.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

