package Paws::ES::CognitoOptions;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CognitoOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::CognitoOptions object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., UserPoolId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::CognitoOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Options to specify the Cognito user and identity pools for Kibana
authentication. For more information, see Amazon Cognito Authentication
for Kibana
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Specifies the option to enable Cognito for Kibana authentication.


=head2 IdentityPoolId => Str

  Specifies the Cognito identity pool ID for Kibana authentication.


=head2 RoleArn => Str

  Specifies the role ARN that provides Elasticsearch permissions for
accessing Cognito resources.


=head2 UserPoolId => Str

  Specifies the Cognito user pool ID for Kibana authentication.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

