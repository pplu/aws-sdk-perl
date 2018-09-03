package Paws::CognitoIdp::DomainDescriptionType;
  use Moose;
  has AWSAccountId => (is => 'ro', isa => 'Str');
  has CloudFrontDistribution => (is => 'ro', isa => 'Str');
  has CustomDomainConfig => (is => 'ro', isa => 'Paws::CognitoIdp::CustomDomainConfigType');
  has Domain => (is => 'ro', isa => 'Str');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DomainDescriptionType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::DomainDescriptionType object:

  $service_obj->Method(Att1 => { AWSAccountId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::DomainDescriptionType object:

  $result = $service_obj->Method(...);
  $result->Att1->AWSAccountId

=head1 DESCRIPTION

A container for information about a domain.

=head1 ATTRIBUTES


=head2 AWSAccountId => Str

  The AWS account ID for the user pool owner.


=head2 CloudFrontDistribution => Str

  The ARN of the CloudFront distribution.


=head2 CustomDomainConfig => L<Paws::CognitoIdp::CustomDomainConfigType>

  


=head2 Domain => Str

  The domain string.


=head2 S3Bucket => Str

  The S3 bucket where the static files for this domain are stored.


=head2 Status => Str

  The domain status.


=head2 UserPoolId => Str

  The user pool ID.


=head2 Version => Str

  The app version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

