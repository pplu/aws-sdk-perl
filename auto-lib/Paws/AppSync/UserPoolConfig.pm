package Paws::AppSync::UserPoolConfig;
  use Moose;
  has AppIdClientRegex => (is => 'ro', isa => 'Str', request_name => 'appIdClientRegex', traits => ['NameInRequest']);
  has AwsRegion => (is => 'ro', isa => 'Str', request_name => 'awsRegion', traits => ['NameInRequest'], required => 1);
  has DefaultAction => (is => 'ro', isa => 'Str', request_name => 'defaultAction', traits => ['NameInRequest'], required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', request_name => 'userPoolId', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UserPoolConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::UserPoolConfig object:

  $service_obj->Method(Att1 => { AppIdClientRegex => $value, ..., UserPoolId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::UserPoolConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AppIdClientRegex

=head1 DESCRIPTION

Describes an Amazon Cognito user pool configuration.

=head1 ATTRIBUTES


=head2 AppIdClientRegex => Str

  A regular expression for validating the incoming Amazon Cognito user
pool app client ID.


=head2 B<REQUIRED> AwsRegion => Str

  The AWS Region in which the user pool was created.


=head2 B<REQUIRED> DefaultAction => Str

  The action that you want your GraphQL API to take when a request that
uses Amazon Cognito user pool authentication doesn't match the Amazon
Cognito user pool configuration.


=head2 B<REQUIRED> UserPoolId => Str

  The user pool ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

