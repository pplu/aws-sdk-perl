package Paws::S3::LambdaFunctionConfiguration;
  use Moose;
  has Events => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Event', traits => ['NameInRequest'], required => 1);
  has Filter => (is => 'ro', isa => 'Paws::S3::NotificationConfigurationFilter');
  has Id => (is => 'ro', isa => 'Str');
  has LambdaFunctionArn => (is => 'ro', isa => 'Str', request_name => 'CloudFunction', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::LambdaFunctionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::LambdaFunctionConfiguration object:

  $service_obj->Method(Att1 => { Events => $value, ..., LambdaFunctionArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::LambdaFunctionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Events

=head1 DESCRIPTION

A container for specifying the configuration for AWS Lambda
notifications.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[Str|Undef]

  


=head2 Filter => L<Paws::S3::NotificationConfigurationFilter>

  


=head2 Id => Str

  


=head2 B<REQUIRED> LambdaFunctionArn => Str

  The Amazon Resource Name (ARN) of the Lambda cloud function that Amazon
S3 can invoke when it detects events of the specified type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

