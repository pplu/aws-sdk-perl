# Generated from default/object.tt
package Paws::KinesisAnalytics::InputProcessingConfigurationUpdate;
  use Moo;
  use Types::Standard qw//;
  use Paws::KinesisAnalytics::Types qw/KinesisAnalytics_InputLambdaProcessorUpdate/;
  has InputLambdaProcessorUpdate => (is => 'ro', isa => KinesisAnalytics_InputLambdaProcessorUpdate, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'InputLambdaProcessorUpdate' => 1
                  },
  'types' => {
               'InputLambdaProcessorUpdate' => {
                                                 'class' => 'Paws::KinesisAnalytics::InputLambdaProcessorUpdate',
                                                 'type' => 'KinesisAnalytics_InputLambdaProcessorUpdate'
                                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputProcessingConfigurationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputProcessingConfigurationUpdate object:

  $service_obj->Method(Att1 => { InputLambdaProcessorUpdate => $value, ..., InputLambdaProcessorUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputProcessingConfigurationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->InputLambdaProcessorUpdate

=head1 DESCRIPTION

Describes updates to an InputProcessingConfiguration
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputLambdaProcessorUpdate => KinesisAnalytics_InputLambdaProcessorUpdate

  Provides update information for an InputLambdaProcessor
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

