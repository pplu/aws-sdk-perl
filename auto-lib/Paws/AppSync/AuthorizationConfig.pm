package Paws::AppSync::AuthorizationConfig;
  use Moose;
  has AuthorizationType => (is => 'ro', isa => 'Str', request_name => 'authorizationType', traits => ['NameInRequest'], required => 1);
  has AwsIamConfig => (is => 'ro', isa => 'Paws::AppSync::AwsIamConfig', request_name => 'awsIamConfig', traits => ['NameInRequest']);
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



=head2 AwsIamConfig => L<Paws::AppSync::AwsIamConfig>

  The AWS IAM settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

