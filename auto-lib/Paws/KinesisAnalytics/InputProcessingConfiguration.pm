# Generated from default/object.tt
package Paws::KinesisAnalytics::InputProcessingConfiguration;
  use Moo;
  use Types::Standard qw//;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_InputLambdaProcessor/;
  has InputLambdaProcessor => (is => 'ro', isa => KinesisAnalytics_InputLambdaProcessor, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputLambdaProcessor' => {
                                           'class' => 'Paws::KinesisAnalytics::InputLambdaProcessor',
                                           'type' => 'KinesisAnalytics_InputLambdaProcessor'
                                         }
             },
  'IsRequired' => {
                    'InputLambdaProcessor' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputProcessingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputProcessingConfiguration object:

  $service_obj->Method(Att1 => { InputLambdaProcessor => $value, ..., InputLambdaProcessor => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputProcessingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->InputLambdaProcessor

=head1 DESCRIPTION

Provides a description of a processor that is used to preprocess the
records in the stream before being processed by your application code.
Currently, the only input processor available is AWS Lambda
(https://docs.aws.amazon.com/lambda/).

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputLambdaProcessor => KinesisAnalytics_InputLambdaProcessor

  The InputLambdaProcessor
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html)
that is used to preprocess the records in the stream before being
processed by your application code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

