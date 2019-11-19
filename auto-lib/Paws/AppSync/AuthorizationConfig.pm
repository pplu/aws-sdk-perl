# Generated from default/object.tt
package Paws::AppSync::AuthorizationConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_AwsIamConfig/;
  has AuthorizationType => (is => 'ro', isa => Str, required => 1);
  has AwsIamConfig => (is => 'ro', isa => AppSync_AwsIamConfig);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AwsIamConfig' => 'awsIamConfig',
                       'AuthorizationType' => 'authorizationType'
                     },
  'IsRequired' => {
                    'AuthorizationType' => 1
                  },
  'types' => {
               'AuthorizationType' => {
                                        'type' => 'Str'
                                      },
               'AwsIamConfig' => {
                                   'class' => 'Paws::AppSync::AwsIamConfig',
                                   'type' => 'AppSync_AwsIamConfig'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::AuthorizationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::AuthorizationConfig object:

  $service_obj->Method(Att1 => { AuthorizationType => $value, ..., AwsIamConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::AuthorizationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizationType

=head1 DESCRIPTION

The authorization config in case the HTTP endpoint requires
authorization.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizationType => Str

  The authorization type required by the HTTP endpoint.

=over

=item *

B<AWS_IAM>: The authorization type is Sigv4.

=back



=head2 AwsIamConfig => AppSync_AwsIamConfig

  The AWS IAM settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

