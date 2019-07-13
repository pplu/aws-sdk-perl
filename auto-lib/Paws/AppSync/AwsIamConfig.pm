package Paws::AppSync::AwsIamConfig;
  use Moose;
  has SigningRegion => (is => 'ro', isa => 'Str', request_name => 'signingRegion', traits => ['NameInRequest']);
  has SigningServiceName => (is => 'ro', isa => 'Str', request_name => 'signingServiceName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::AwsIamConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::AwsIamConfig object:

  $service_obj->Method(Att1 => { SigningRegion => $value, ..., SigningServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::AwsIamConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->SigningRegion

=head1 DESCRIPTION

The AWS IAM configuration.

=head1 ATTRIBUTES


=head2 SigningRegion => Str

  The signing region for AWS IAM authorization.


=head2 SigningServiceName => Str

  The signing service name for AWS IAM authorization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

