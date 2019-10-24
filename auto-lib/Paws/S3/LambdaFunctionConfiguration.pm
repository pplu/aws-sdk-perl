# Generated from default/object.tt
package Paws::S3::LambdaFunctionConfiguration;
  use Moo;
  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::S3::Types qw/S3_NotificationConfigurationFilter/;
  has Events => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);
  has Filter => (is => 'ro', isa => S3_NotificationConfigurationFilter);
  has Id => (is => 'ro', isa => Str);
  has LambdaFunctionArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filter' => {
                             'class' => 'Paws::S3::NotificationConfigurationFilter',
                             'type' => 'S3_NotificationConfigurationFilter'
                           },
               'Id' => {
                         'type' => 'Str'
                       },
               'Events' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'LambdaFunctionArn' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'Events' => 'Event',
                       'LambdaFunctionArn' => 'CloudFunction'
                     },
  'IsRequired' => {
                    'Events' => 1,
                    'LambdaFunctionArn' => 1
                  }
}
;
    return $Params_map;
  }


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

  The Amazon S3 bucket event for which to invoke the AWS Lambda function.
For more information, see Supported Event Types
(https://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html)
in the I<Amazon Simple Storage Service Developer Guide>.


=head2 Filter => S3_NotificationConfigurationFilter

  


=head2 Id => Str

  


=head2 B<REQUIRED> LambdaFunctionArn => Str

  The Amazon Resource Name (ARN) of the AWS Lambda function that Amazon
S3 invokes when the specified event type occurs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

