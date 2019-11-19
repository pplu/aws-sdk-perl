# Generated from default/object.tt
package Paws::KinesisAnalytics::InputLambdaProcessorUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalytics::Types qw//;
  has ResourceARNUpdate => (is => 'ro', isa => Str);
  has RoleARNUpdate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceARNUpdate' => {
                                        'type' => 'Str'
                                      },
               'RoleARNUpdate' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputLambdaProcessorUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputLambdaProcessorUpdate object:

  $service_obj->Method(Att1 => { ResourceARNUpdate => $value, ..., RoleARNUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputLambdaProcessorUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARNUpdate

=head1 DESCRIPTION

Represents an update to the InputLambdaProcessor
(https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputLambdaProcessor.html)
that is used to preprocess the records in the stream.

=head1 ATTRIBUTES


=head2 ResourceARNUpdate => Str

  The Amazon Resource Name (ARN) of the new AWS Lambda
(https://docs.aws.amazon.com/lambda/) function that is used to
preprocess the records in the stream.

To specify an earlier version of the Lambda function than the latest,
include the Lambda function version in the Lambda function ARN. For
more information about Lambda ARNs, see Example ARNs: AWS Lambda


=head2 RoleARNUpdate => Str

  The ARN of the new IAM role that is used to access the AWS Lambda
function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

