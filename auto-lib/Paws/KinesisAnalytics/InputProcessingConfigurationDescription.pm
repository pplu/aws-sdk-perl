# Generated from default/object.tt
package Paws::KinesisAnalytics::InputProcessingConfigurationDescription;
  use Moo;
  use Types::Standard qw//;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_InputLambdaProcessorDescription/;
  has InputLambdaProcessorDescription => (is => 'ro', isa => KinesisAnalytics_InputLambdaProcessorDescription);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputLambdaProcessorDescription' => {
                                                      'class' => 'Paws::KinesisAnalytics::InputLambdaProcessorDescription',
                                                      'type' => 'KinesisAnalytics_InputLambdaProcessorDescription'
                                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputProcessingConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputProcessingConfigurationDescription object:

  $service_obj->Method(Att1 => { InputLambdaProcessorDescription => $value, ..., InputLambdaProcessorDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputProcessingConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->InputLambdaProcessorDescription

=head1 DESCRIPTION

Provides configuration information about an input processor. Currently,
the only input processor available is AWS Lambda
(https://docs.aws.amazon.com/lambda/).

=head1 ATTRIBUTES


=head2 InputLambdaProcessorDescription => KinesisAnalytics_InputLambdaProcessorDescription

  Provides configuration information about the associated
InputLambdaProcessorDescription
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessorDescription.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

