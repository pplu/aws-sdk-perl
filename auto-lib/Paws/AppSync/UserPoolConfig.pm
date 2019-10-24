# Generated from default/object.tt
package Paws::AppSync::UserPoolConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw//;
  has AppIdClientRegex => (is => 'ro', isa => Str);
  has AwsRegion => (is => 'ro', isa => Str, required => 1);
  has DefaultAction => (is => 'ro', isa => Str, required => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserPoolId' => {
                                 'type' => 'Str'
                               },
               'AwsRegion' => {
                                'type' => 'Str'
                              },
               'DefaultAction' => {
                                    'type' => 'Str'
                                  },
               'AppIdClientRegex' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'UserPoolId' => 'userPoolId',
                       'AwsRegion' => 'awsRegion',
                       'DefaultAction' => 'defaultAction',
                       'AppIdClientRegex' => 'appIdClientRegex'
                     },
  'IsRequired' => {
                    'UserPoolId' => 1,
                    'AwsRegion' => 1,
                    'DefaultAction' => 1
                  }
}
;
    return $Params_map;
  }


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

